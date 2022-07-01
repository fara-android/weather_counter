import 'package:counter_test_app/app/data/models/weather_response_model.dart';
import 'package:counter_test_app/app/domain/repositories/repo_get_weather.dart';

class GetWeatherCase {
  final RepoGetWeather repository;

  GetWeatherCase({required this.repository});

  Future<RepoGetWeatherResult> getWeather(
      {required String lat, required String lon}) async {
    final response = await repository.getWeather(lat: lat, lon: lon);

    return response;
  }
}
