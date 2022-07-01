// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) successCounterValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? successCounterValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? successCounterValueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessCounterValueChanged value)
        successCounterValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessCounterValueChanged value)?
        successCounterValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessCounterValueChanged value)?
        successCounterValueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CounterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) successCounterValueChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? successCounterValueChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? successCounterValueChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessCounterValueChanged value)
        successCounterValueChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessCounterValueChanged value)?
        successCounterValueChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessCounterValueChanged value)?
        successCounterValueChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CounterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCounterValueChangedCopyWith<$Res> {
  factory _$$_SuccessCounterValueChangedCopyWith(
          _$_SuccessCounterValueChanged value,
          $Res Function(_$_SuccessCounterValueChanged) then) =
      __$$_SuccessCounterValueChangedCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$$_SuccessCounterValueChangedCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res>
    implements _$$_SuccessCounterValueChangedCopyWith<$Res> {
  __$$_SuccessCounterValueChangedCopyWithImpl(
      _$_SuccessCounterValueChanged _value,
      $Res Function(_$_SuccessCounterValueChanged) _then)
      : super(_value, (v) => _then(v as _$_SuccessCounterValueChanged));

  @override
  _$_SuccessCounterValueChanged get _value =>
      super._value as _$_SuccessCounterValueChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SuccessCounterValueChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SuccessCounterValueChanged implements _SuccessCounterValueChanged {
  const _$_SuccessCounterValueChanged(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'CounterState.successCounterValueChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessCounterValueChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCounterValueChangedCopyWith<_$_SuccessCounterValueChanged>
      get copyWith => __$$_SuccessCounterValueChangedCopyWithImpl<
          _$_SuccessCounterValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) successCounterValueChanged,
  }) {
    return successCounterValueChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? successCounterValueChanged,
  }) {
    return successCounterValueChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? successCounterValueChanged,
    required TResult orElse(),
  }) {
    if (successCounterValueChanged != null) {
      return successCounterValueChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessCounterValueChanged value)
        successCounterValueChanged,
  }) {
    return successCounterValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessCounterValueChanged value)?
        successCounterValueChanged,
  }) {
    return successCounterValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessCounterValueChanged value)?
        successCounterValueChanged,
    required TResult orElse(),
  }) {
    if (successCounterValueChanged != null) {
      return successCounterValueChanged(this);
    }
    return orElse();
  }
}

abstract class _SuccessCounterValueChanged implements CounterState {
  const factory _SuccessCounterValueChanged(final int value) =
      _$_SuccessCounterValueChanged;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCounterValueChangedCopyWith<_$_SuccessCounterValueChanged>
      get copyWith => throw _privateConstructorUsedError;
}
