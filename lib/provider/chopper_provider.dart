import 'package:chopper/chopper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/data/model/forecast.dart';
import 'package:weather_app/data/model/location.dart';
import 'package:weather_app/data/service/geocoding_open_meteo_service.dart';
import 'package:weather_app/data/service/json_serializable_converter.dart';
import 'package:weather_app/data/service/open_meteo_service.dart';

final converterProvider = Provider<JsonSerializableConverter>((ref) {
  return const JsonSerializableConverter({
    LocationResponse: LocationResponse.fromJson,
    Location: Location.fromJson,
    Forecast: Forecast.fromJson,
    WeatherUnits: WeatherUnits.fromJson,
    Weather: Weather.fromJson,
  });
});
final geocodingApiClientProvider = Provider<ChopperClient>((ref) {
  return ChopperClient(
    baseUrl: Uri(
      scheme: 'https',
      host: 'geocoding-api.open-meteo.com',
    ),
    converter: ref.read(converterProvider),
    services: [
      // Add the generated service to the list of services
      // in the ChopperClient instance
      // ignore: cast_nullable_to_non_nullable
      GeocodingOpenMeteoService.create(),
    ],
  );
});

final geocodingOpenMeteoServiceProvider =
    Provider<GeocodingOpenMeteoService>((ref) {
  // Read the ChopperClient instance
  final chopperClient = ref.read(geocodingApiClientProvider);
  // Return the service using the ChopperClient
  return chopperClient.getService<GeocodingOpenMeteoService>();
});

final apiClientProvider = Provider<ChopperClient>((ref) {
  return ChopperClient(
    baseUrl: Uri(
      scheme: 'https',
      host: 'api.open-meteo.com',
    ),
    converter: ref.read(converterProvider),
    services: [
      // Add the generated service to the list of services
      // in the ChopperClient instance
      // ignore: cast_nullable_to_non_nullable
      OpenMeteoService.create(),
    ],
  );
});

final openMeteoServiceProvider = Provider<OpenMeteoService>((ref) {
  // Read the ChopperClient instance
  final chopperClient = ref.read(apiClientProvider);
  // Return the service using the ChopperClient
  return chopperClient.getService<OpenMeteoService>();
});
