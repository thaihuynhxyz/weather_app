import 'package:chopper/chopper.dart';
import 'package:weather_app/data/model/forecast.dart';

part 'open_meteo_service.chopper.dart';

@ChopperApi(baseUrl: '/v1')
abstract class OpenMeteoService extends ChopperService {
  static OpenMeteoService create([ChopperClient? client]) =>
      _$OpenMeteoService(client);

  @Get(path: '/forecast')
  Future<Response<Forecast>> forecast(
    @Query() double latitude,
    @Query() double longitude, {
    @Query('current_weather') bool currentWeather = true,
  });
}
