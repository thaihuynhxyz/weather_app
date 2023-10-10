import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:weather_app/data/model/forecast.dart';
import 'package:weather_app/provider/chopper_provider.dart';

final forecastRepositoryProvider = Provider<ForecastRepository>(
  ForecastRepository.new,
);

class ForecastRepository {
  ForecastRepository(this.ref);

  final Ref ref;

  Future<Forecast?> forecast(double latitude, double longitude) async {
    final response =
        await ref.read(openMeteoServiceProvider).forecast(latitude, longitude);
    return response.body;
  }
}
