// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_open_meteo_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$GeocodingOpenMeteoService extends GeocodingOpenMeteoService {
  _$GeocodingOpenMeteoService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GeocodingOpenMeteoService;

  @override
  Future<Response<LocationResponse>> searchLocations(String name) {
    final Uri $url = Uri.parse('/v1/search');
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<LocationResponse, LocationResponse>($request);
  }
}
