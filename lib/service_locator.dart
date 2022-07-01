import 'package:counter_test_app/app/data/repository/get_weather_repository.dart';
import 'package:counter_test_app/app/data/repository/repository.dart';
import 'package:counter_test_app/app/domain/repositories/repo_get_weather.dart';
import 'package:counter_test_app/app/domain/usecases/get_weather_case.dart';
import 'package:counter_test_app/app/presentation/cubits/counter_cubit/counter_cubit.dart';
import 'package:counter_test_app/app/presentation/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Repository
  sl.registerLazySingleton<Repository>(
    () => Repository(),
  );
  sl.registerLazySingleton<RepoGetWeather>(
    () => GetWeatherRepository(
      repository: sl(),
    ),
  );

  // UseCases
  sl.registerLazySingleton<GetWeatherCase>(
    () => GetWeatherCase(
      repository: sl(),
    ),
  );

  // BLoC / Cubit
  sl.registerFactory<CounterCubit>(
    () => CounterCubit(),
  );
  sl.registerFactory<GetWeatherCubit>(
    () => GetWeatherCubit(
      getWeatherCase: sl(),
    ),
  );
}
