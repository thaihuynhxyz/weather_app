// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$OpenMeteoService extends OpenMeteoService {
  _$OpenMeteoService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OpenMeteoService;

  @override
  Future<Response<Forecast>> forecast(
    double latitude,
    double longitude, {
    bool currentWeather = true,
  }) {
    final Uri $url = Uri.parse('/v1/forecast');
    final Map<String, dynamic> $params = <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'current_weather': currentWeather,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Forecast, Forecast>($request);
  }
}
