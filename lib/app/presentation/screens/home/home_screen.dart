import 'package:counter_test_app/app/presentation/cubits/counter_cubit/counter_cubit.dart';
import 'package:counter_test_app/app/presentation/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:counter_test_app/app/presentation/widgets/custom_loading.dart';
import 'package:counter_test_app/core/theme/theme_state.dart';
import 'package:counter_test_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
part 'parts/information_for_user.dart';
part 'parts/counter.dart';
part 'parts/action_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather Counter',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(create: (_) => sl<CounterCubit>()),
          BlocProvider<GetWeatherCubit>(create: (_) => sl<GetWeatherCubit>()),
        ],
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                const InformationForUser(),
                const SizedBox(height: 12),
                Counter(),
                const Spacer(),
                const ActionButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
