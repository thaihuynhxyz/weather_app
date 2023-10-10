import 'package:chopper/chopper.dart';
import 'package:weather_app/data/model/location.dart';

part 'geocoding_open_meteo_service.chopper.dart';

@ChopperApi(baseUrl: '/v1')
abstract class GeocodingOpenMeteoService extends ChopperService {
  static GeocodingOpenMeteoService create([ChopperClient? client]) =>
      _$GeocodingOpenMeteoService(client);

  @Get(path: '/search')
  Future<Response<LocationResponse>> searchLocations(@Query() String name);
}
