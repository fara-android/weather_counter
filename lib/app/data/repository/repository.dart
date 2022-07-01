import 'package:counter_test_app/app/data/data_source/api_data_source/get_weather_api.dart';
import 'package:counter_test_app/app/data/data_source/helpers/dio_settings.dart';
import 'package:dio/dio.dart';

class Repository {
  Repository() {
    _dio = _getDio();
    getWeatherApi = GetWeatherApi(dio: _dio);
  }

  late Dio _dio;
  late GetWeatherApi getWeatherApi;
}

Dio _getDio() {
  final apiSettings = DioSettings();

  return apiSettings.dio;
}
