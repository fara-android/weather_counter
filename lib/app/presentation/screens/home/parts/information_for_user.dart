part of '../home_screen.dart';

class InformationForUser extends StatelessWidget {
  const InformationForUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const CustomLoading(),
              weatherLoaded: (weatherModel) => Text(
                'Weather for ${weatherModel.name}: ${weatherModel.main?.temp} in kelvins',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              failed: (error) =>
                  Text(error, style: Theme.of(context).textTheme.bodyText2),
            );
          },
        ),
        const SizedBox(height: 22),
        Text(
          'Press the icon to get your location',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 32),
        Text(
          'You have pushed the button this many times:',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
