import 'package:counter_test_app/app/data/repository/repository.dart';
import 'package:counter_test_app/app/domain/repositories/repo_get_weather.dart';
import 'package:counter_test_app/core/app_error.dart';

class GetWeatherRepository implements RepoGetWeather {
  final Repository repository;

  GetWeatherRepository({required this.repository});
  @override
  Future<RepoGetWeatherResult> getWeather({
    required String lat,
    required String lon,
  }) async {
    final response =
        await repository.getWeatherApi.getWeather(lat: lat, lon: lon);

    if (response.error == null) {
      return RepoGetWeatherResult(
          weatherResponseModel: response.weatherResponseModel);
    }
    return RepoGetWeatherResult(
      error: AppError(message: response.error!.message),
    );
  }
}
