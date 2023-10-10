import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_error.freezed.dart';

part 'resource_error.g.dart';

@freezed
class ResourceError with _$ResourceError {
  const factory ResourceError({
    String? reason,
    bool? error,
  }) = _ResourceError;

  factory ResourceError.fromJson(Map<String, dynamic> json) =>
      _$ResourceErrorFromJson(json);
}
