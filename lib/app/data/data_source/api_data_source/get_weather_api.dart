import 'package:counter_test_app/app/data/data_source/helpers/catch_exceptions.dart';
import 'package:counter_test_app/app/data/models/weather_response_model.dart';
import 'package:counter_test_app/app/domain/repositories/repo_get_weather.dart';
import 'package:counter_test_app/core/app_error.dart';
import 'package:dio/dio.dart';

class GetWeatherApi {
  final Dio dio;

  GetWeatherApi({required this.dio});

  Future<RepoGetWeatherResult> getWeather({
    required String lat,
    required String lon,
  }) async {
    try {
      final response = await dio.get(
        'weather',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'appid': '5b295e56bed85f549ada9cb73e329f26',
        },
      );

      return RepoGetWeatherResult(
        weatherResponseModel: WeatherResponseModel.fromJson(response.data),
      );
    } catch (e) {
      return RepoGetWeatherResult(
        error: AppError(
          message: CatchException.convertException(e).message.toString(),
        ),
      );
    }
  }
}
