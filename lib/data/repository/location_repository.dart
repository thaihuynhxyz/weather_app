import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:weather_app/data/model/location.dart';
import 'package:weather_app/provider/chopper_provider.dart';

final locationRepositoryProvider = Provider<LocationRepository>(
  LocationRepository.new,
);

class LocationRepository {
  LocationRepository(this.ref);

  final Ref ref;

  Future<List<Location>> search(String name) async {
    final response =
        await ref.read(geocodingOpenMeteoServiceProvider).searchLocations(name);
    return response.body?.results ?? [];
  }
}
