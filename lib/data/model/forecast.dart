import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/l10n/l10n.dart';

part 'forecast.freezed.dart';

part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast(
    @JsonKey(name: 'current_weather_units') WeatherUnits currentWeatherUnits,
    @JsonKey(name: 'current_weather') Weather currentWeather,
  ) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class WeatherUnits with _$WeatherUnits {
  const factory WeatherUnits(String temperature) = _WeatherUnits;

  factory WeatherUnits.fromJson(Map<String, dynamic> json) =>
      _$WeatherUnitsFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather(
    double temperature,
    int weathercode,
  ) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

String weatherDescription(BuildContext context, int code) {
  switch (code) {
    case 0: // Clear sky
      return context.l10n.weatherClearSky;
    case 1: // Mainly clear, partly cloudy, and overcast
    case 2:
    case 3:
      return context.l10n.weatherMainlyClear;
    case 45: // Fog and depositing rime fog
    case 48:
      return context.l10n.weatherFog;
    case 51: // Drizzle
    case 53:
    case 55:
      return context.l10n.weatherDrizzle;
    case 56: // Freezing drizzle
    case 57:
      return context.l10n.weatherFreezingDrizzle;
    case 61: // Rain
    case 63:
    case 65:
      return context.l10n.weatherRain;
    case 66: // Freezing rain
    case 67:
      return context.l10n.weatherFreezingRain;
    case 71: // Snow
    case 73:
    case 75:
      return context.l10n.weatherSnow;
    case 77: // Snow grains
      return context.l10n.weatherSnowGrains;
    case 80: // Rain showers
    case 81:
    case 82:
      return context.l10n.weatherRainShowers;
    case 85: // Snow showers
    case 86:
      return context.l10n.weatherSnowShowers;
    case 95: // Thunderstorm
      return context.l10n.weatherThunderstorm;
    case 96: // Thunderstorm with hail
    case 99:
      return context.l10n.weatherThunderstormWithHail;
    default:
      return '';
  }
}

final weatherIcon = {
  0: 'clear-day',
  1: 'overcast-day',
  2: 'overcast-day',
  3: 'overcast-day',
  45: 'fog-day',
  48: 'fog-day',
  51: 'drizzle',
  53: 'drizzle',
  55: 'drizzle',
  56: 'partly-cloudy-day-sleet',
  57: 'partly-cloudy-day-sleet',
  61: 'rain',
  63: 'rain',
  65: 'rain',
  66: 'sleet',
  67: 'sleet',
  71: 'snow',
  73: 'snow',
  75: 'snow',
  77: 'partly-cloudy-day-snow',
  80: 'thunderstorms-day-rain',
  81: 'thunderstorms-day-rain',
  82: 'thunderstorms-day-rain',
  85: 'thunderstorms-day-snow',
  86: 'thunderstorms-day-snow',
  95: 'thunderstorms-day',
  96: 'partly-cloudy-day-hail',
  99: 'partly-cloudy-day-hail',
};
