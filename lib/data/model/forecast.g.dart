// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastImpl _$$ForecastImplFromJson(Map<String, dynamic> json) =>
    _$ForecastImpl(
      WeatherUnits.fromJson(
          json['current_weather_units'] as Map<String, dynamic>),
      Weather.fromJson(json['current_weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastImplToJson(_$ForecastImpl instance) =>
    <String, dynamic>{
      'current_weather_units': instance.currentWeatherUnits,
      'current_weather': instance.currentWeather,
    };

_$WeatherUnitsImpl _$$WeatherUnitsImplFromJson(Map<String, dynamic> json) =>
    _$WeatherUnitsImpl(
      json['temperature'] as String,
    );

Map<String, dynamic> _$$WeatherUnitsImplToJson(_$WeatherUnitsImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      (json['temperature'] as num).toDouble(),
      json['weathercode'] as int,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'weathercode': instance.weathercode,
    };
