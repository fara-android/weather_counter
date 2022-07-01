import 'package:bloc/bloc.dart';
import 'package:counter_test_app/app/data/models/weather_response_model.dart';
import 'package:counter_test_app/app/domain/usecases/get_weather_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_weather_cubit.freezed.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  final GetWeatherCase getWeatherCase;
  GetWeatherCubit({
    required this.getWeatherCase,
  }) : super(const GetWeatherState.initial());

  Future<void> getWeather({required String lat, required String lon}) async {
    emit(const GetWeatherState.loading());
    final response = await getWeatherCase.getWeather(lat: lat, lon: lon);

    if (response.error == null) {
      emit(GetWeatherState.weatherLoaded(response.weatherResponseModel!));
    } else {
      emit(GetWeatherState.failed(response.error!.message));
    }
  }
}

@freezed
class GetWeatherState with _$GetWeatherState {
  const factory GetWeatherState.initial() = _Initial;
  const factory GetWeatherState.loading() = _Loading;
  const factory GetWeatherState.weatherLoaded(
      WeatherResponseModel weatherResponseModel) = _WeatherLoaded;
  const factory GetWeatherState.failed(String error) = _Failed;
}
