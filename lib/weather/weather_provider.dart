import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/model/forecast.dart';
import 'package:weather_app/data/repository/forecast_repository.dart';

part 'weather_provider.g.dart';

@riverpod
class Weather extends _$Weather {
  /// The initial state
  /// Using MapEntry to store the last search query as the key and
  /// the list of locations as the value
  @override
  FutureOr<Forecast?> build() async {
    return null;
  }

  Future<void> forecast(double latitude, double longitude) async {
    state = const AsyncLoading();
    final forecastRepository = ref.read(forecastRepositoryProvider);
    state = await AsyncValue.guard(() async {
      return forecastRepository.forecast(latitude, longitude);
    });
  }
}
