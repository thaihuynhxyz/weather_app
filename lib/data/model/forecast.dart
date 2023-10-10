import 'package:freezed_annotation/freezed_annotation.dart';

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

final weatherDescription = {
  0: 'Clear sky',
  1: 'Mainly clear, partly cloudy, and overcast',
  2: 'Mainly clear, partly cloudy, and overcast',
  3: 'Mainly clear, partly cloudy, and overcast',
  45: 'Fog and depositing rime fog',
  48: 'Fog and depositing rime fog',
  51: 'Drizzle: Light, moderate, and dense intensity',
  53: 'Drizzle: Light, moderate, and dense intensity',
  55: 'Drizzle: Light, moderate, and dense intensity',
  56: 'Freezing Drizzle: Light and dense intensity',
  57: 'Freezing Drizzle: Light and dense intensity',
  61: 'Rain: Slight, moderate and heavy intensity',
  63: 'Rain: Slight, moderate and heavy intensity',
  65: 'Rain: Slight, moderate and heavy intensity',
  66: 'Freezing Rain: Light and heavy intensity',
  67: 'Freezing Rain: Light and heavy intensity',
  71: 'Snow fall: Slight, moderate, and heavy intensity',
  73: 'Snow fall: Slight, moderate, and heavy intensity',
  75: 'Snow fall: Slight, moderate, and heavy intensity',
  77: 'Snow grains',
  80: 'Rain showers: Slight, moderate, and violent',
  81: 'Rain showers: Slight, moderate, and violent',
  82: 'Rain showers: Slight, moderate, and violent',
  85: 'Snow showers slight and heavy',
  86: 'Snow showers slight and heavy',
  95: 'Thunderstorm: Slight or moderate',
  96: 'Thunderstorm with slight and heavy hail',
  99: 'Thunderstorm with slight and heavy hail',
};

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
