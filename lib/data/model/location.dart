import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location(
    int id,
    String name,
    double latitude,
    double longitude,
  ) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class LocationResponse with _$LocationResponse {
  const factory LocationResponse(List<Location> results) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}
