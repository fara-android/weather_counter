import 'package:counter_test_app/app/data/models/weather_response_model.dart';
import 'package:counter_test_app/core/app_error.dart';

abstract class RepoGetWeather {
  Future<RepoGetWeatherResult> getWeather({
    required String lat,
    required String lon,
  });
}

class RepoGetWeatherResult {
  RepoGetWeatherResult({
    this.error,
    this.weatherResponseModel,
  });

  final AppError? error;
  final WeatherResponseModel? weatherResponseModel;

  @override
  String toString() =>
      'RepoAuthResult(error: $error, result: $weatherResponseModel)';
}
