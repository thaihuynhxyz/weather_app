// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  @JsonKey(name: 'current_weather_units')
  WeatherUnits get currentWeatherUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_weather')
  Weather get currentWeather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_weather_units') WeatherUnits currentWeatherUnits,
      @JsonKey(name: 'current_weather') Weather currentWeather});

  $WeatherUnitsCopyWith<$Res> get currentWeatherUnits;
  $WeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeatherUnits = null,
    Object? currentWeather = null,
  }) {
    return _then(_value.copyWith(
      currentWeatherUnits: null == currentWeatherUnits
          ? _value.currentWeatherUnits
          : currentWeatherUnits // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherUnitsCopyWith<$Res> get currentWeatherUnits {
    return $WeatherUnitsCopyWith<$Res>(_value.currentWeatherUnits, (value) {
      return _then(_value.copyWith(currentWeatherUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get currentWeather {
    return $WeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastImplCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$$ForecastImplCopyWith(
          _$ForecastImpl value, $Res Function(_$ForecastImpl) then) =
      __$$ForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_weather_units') WeatherUnits currentWeatherUnits,
      @JsonKey(name: 'current_weather') Weather currentWeather});

  @override
  $WeatherUnitsCopyWith<$Res> get currentWeatherUnits;
  @override
  $WeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$ForecastImplCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$ForecastImpl>
    implements _$$ForecastImplCopyWith<$Res> {
  __$$ForecastImplCopyWithImpl(
      _$ForecastImpl _value, $Res Function(_$ForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeatherUnits = null,
    Object? currentWeather = null,
  }) {
    return _then(_$ForecastImpl(
      null == currentWeatherUnits
          ? _value.currentWeatherUnits
          : currentWeatherUnits // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
      null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastImpl implements _Forecast {
  const _$ForecastImpl(
      @JsonKey(name: 'current_weather_units') this.currentWeatherUnits,
      @JsonKey(name: 'current_weather') this.currentWeather);

  factory _$ForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastImplFromJson(json);

  @override
  @JsonKey(name: 'current_weather_units')
  final WeatherUnits currentWeatherUnits;
  @override
  @JsonKey(name: 'current_weather')
  final Weather currentWeather;

  @override
  String toString() {
    return 'Forecast(currentWeatherUnits: $currentWeatherUnits, currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastImpl &&
            (identical(other.currentWeatherUnits, currentWeatherUnits) ||
                other.currentWeatherUnits == currentWeatherUnits) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentWeatherUnits, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      __$$ForecastImplCopyWithImpl<_$ForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastImplToJson(
      this,
    );
  }
}

abstract class _Forecast implements Forecast {
  const factory _Forecast(
          @JsonKey(name: 'current_weather_units')
          final WeatherUnits currentWeatherUnits,
          @JsonKey(name: 'current_weather') final Weather currentWeather) =
      _$ForecastImpl;

  factory _Forecast.fromJson(Map<String, dynamic> json) =
      _$ForecastImpl.fromJson;

  @override
  @JsonKey(name: 'current_weather_units')
  WeatherUnits get currentWeatherUnits;
  @override
  @JsonKey(name: 'current_weather')
  Weather get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherUnits _$WeatherUnitsFromJson(Map<String, dynamic> json) {
  return _WeatherUnits.fromJson(json);
}

/// @nodoc
mixin _$WeatherUnits {
  String get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherUnitsCopyWith<WeatherUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherUnitsCopyWith<$Res> {
  factory $WeatherUnitsCopyWith(
          WeatherUnits value, $Res Function(WeatherUnits) then) =
      _$WeatherUnitsCopyWithImpl<$Res, WeatherUnits>;
  @useResult
  $Res call({String temperature});
}

/// @nodoc
class _$WeatherUnitsCopyWithImpl<$Res, $Val extends WeatherUnits>
    implements $WeatherUnitsCopyWith<$Res> {
  _$WeatherUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherUnitsImplCopyWith<$Res>
    implements $WeatherUnitsCopyWith<$Res> {
  factory _$$WeatherUnitsImplCopyWith(
          _$WeatherUnitsImpl value, $Res Function(_$WeatherUnitsImpl) then) =
      __$$WeatherUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String temperature});
}

/// @nodoc
class __$$WeatherUnitsImplCopyWithImpl<$Res>
    extends _$WeatherUnitsCopyWithImpl<$Res, _$WeatherUnitsImpl>
    implements _$$WeatherUnitsImplCopyWith<$Res> {
  __$$WeatherUnitsImplCopyWithImpl(
      _$WeatherUnitsImpl _value, $Res Function(_$WeatherUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
  }) {
    return _then(_$WeatherUnitsImpl(
      null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherUnitsImpl implements _WeatherUnits {
  const _$WeatherUnitsImpl(this.temperature);

  factory _$WeatherUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherUnitsImplFromJson(json);

  @override
  final String temperature;

  @override
  String toString() {
    return 'WeatherUnits(temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherUnitsImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherUnitsImplCopyWith<_$WeatherUnitsImpl> get copyWith =>
      __$$WeatherUnitsImplCopyWithImpl<_$WeatherUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherUnitsImplToJson(
      this,
    );
  }
}

abstract class _WeatherUnits implements WeatherUnits {
  const factory _WeatherUnits(final String temperature) = _$WeatherUnitsImpl;

  factory _WeatherUnits.fromJson(Map<String, dynamic> json) =
      _$WeatherUnitsImpl.fromJson;

  @override
  String get temperature;
  @override
  @JsonKey(ignore: true)
  _$$WeatherUnitsImplCopyWith<_$WeatherUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  double get temperature => throw _privateConstructorUsedError;
  int get weathercode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({double temperature, int weathercode});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? weathercode = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temperature, int weathercode});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? weathercode = null,
  }) {
    return _then(_$WeatherImpl(
      null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(this.temperature, this.weathercode);

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final double temperature;
  @override
  final int weathercode;

  @override
  String toString() {
    return 'Weather(temperature: $temperature, weathercode: $weathercode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weathercode, weathercode) ||
                other.weathercode == weathercode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature, weathercode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(final double temperature, final int weathercode) =
      _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  double get temperature;
  @override
  int get weathercode;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
