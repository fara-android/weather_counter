part of '../home_screen.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  final counter = ValueNotifier(0);
  late Position position;
  @override
  void initState() {
    _determinePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  BlocProvider.of<GetWeatherCubit>(context).getWeather(
                lat: position.latitude.toString(),
                lon: position.longitude.toString(),
              ),
              child: const Icon(Icons.cloud),
            ),
            const SizedBox(height: 16),
            BlocListener<CounterCubit, CounterState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  initial: () => counter.value = 0,
                  successCounterValueChanged: (value) => counter.value = value,
                );
              },
              child: ValueListenableBuilder(
                valueListenable: counter,
                builder: (context, str, _) {
                  return AnimatedOpacity(
                    opacity: counter.value < 10 ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: FloatingActionButton(
                      onPressed: () => BlocProvider.of<CounterCubit>(context)
                          .incrementCounter(
                        counter.value,
                        isDarkTheme:
                            Theme.of(context).brightness == Brightness.dark,
                      ),
                      child: const Icon(Icons.add),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                Theme.of(context).brightness == Brightness.dark
                    ? CustomTheme.instanceOf(context).changeThemeToLight()
                    : CustomTheme.instanceOf(context).changeThemeToDark();
              },
              child: const Icon(Icons.color_lens_rounded),
            ),
            const SizedBox(height: 16),
            BlocListener<CounterCubit, CounterState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  initial: () => counter.value = 0,
                  successCounterValueChanged: (value) => counter.value = value,
                );
              },
              child: ValueListenableBuilder(
                valueListenable: counter,
                builder: (context, str, _) {
                  return AnimatedOpacity(
                    opacity: counter.value > 0 ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: FloatingActionButton(
                      onPressed: () => BlocProvider.of<CounterCubit>(context)
                          .decrementCounter(
                        counter.value,
                        isDarkTheme:
                            Theme.of(context).brightness == Brightness.dark,
                      ),
                      child: const Icon(Icons.remove),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Для определения адреса разрешите использовать текущую геолокацию в настройках',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    splashColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: Colors.transparent,
                    child: const Text(
                      'Отмена',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      await openAppSettings();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: const Text(
                        'Настройки',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final _position = await Geolocator.getCurrentPosition();
    setState(() {
      position = _position;
    });
  }
}
