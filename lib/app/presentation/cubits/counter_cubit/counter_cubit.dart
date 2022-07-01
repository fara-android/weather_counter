import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_cubit.freezed.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState.initial());

  void incrementCounter(int oldValue, {required bool isDarkTheme}) {
    final newValue = isDarkTheme ? oldValue + 2 : oldValue + 1;

    if (newValue > 10) {
      emit(const CounterState.successCounterValueChanged(10));
    } else {
      emit(CounterState.successCounterValueChanged(newValue));
    }
  }

  void decrementCounter(int oldValue, {required bool isDarkTheme}) {
    final newValue = isDarkTheme ? oldValue - 2 : oldValue - 1;

    if (newValue < 0) {
      emit(const CounterState.successCounterValueChanged(0));
    } else {
      emit(CounterState.successCounterValueChanged(newValue));
    }
  }
}

@freezed
class CounterState with _$CounterState {
  const factory CounterState.initial() = _Initial;
  const factory CounterState.successCounterValueChanged(int value) =
      _SuccessCounterValueChanged;
}
