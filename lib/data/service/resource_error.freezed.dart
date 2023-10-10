// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResourceError _$ResourceErrorFromJson(Map<String, dynamic> json) {
  return _ResourceError.fromJson(json);
}

/// @nodoc
mixin _$ResourceError {
  String? get reason => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceErrorCopyWith<ResourceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceErrorCopyWith<$Res> {
  factory $ResourceErrorCopyWith(
          ResourceError value, $Res Function(ResourceError) then) =
      _$ResourceErrorCopyWithImpl<$Res, ResourceError>;
  @useResult
  $Res call({String? reason, bool? error});
}

/// @nodoc
class _$ResourceErrorCopyWithImpl<$Res, $Val extends ResourceError>
    implements $ResourceErrorCopyWith<$Res> {
  _$ResourceErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceErrorImplCopyWith<$Res>
    implements $ResourceErrorCopyWith<$Res> {
  factory _$$ResourceErrorImplCopyWith(
          _$ResourceErrorImpl value, $Res Function(_$ResourceErrorImpl) then) =
      __$$ResourceErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason, bool? error});
}

/// @nodoc
class __$$ResourceErrorImplCopyWithImpl<$Res>
    extends _$ResourceErrorCopyWithImpl<$Res, _$ResourceErrorImpl>
    implements _$$ResourceErrorImplCopyWith<$Res> {
  __$$ResourceErrorImplCopyWithImpl(
      _$ResourceErrorImpl _value, $Res Function(_$ResourceErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ResourceErrorImpl(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceErrorImpl implements _ResourceError {
  const _$ResourceErrorImpl({this.reason, this.error});

  factory _$ResourceErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceErrorImplFromJson(json);

  @override
  final String? reason;
  @override
  final bool? error;

  @override
  String toString() {
    return 'ResourceError(reason: $reason, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceErrorImplCopyWith<_$ResourceErrorImpl> get copyWith =>
      __$$ResourceErrorImplCopyWithImpl<_$ResourceErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceErrorImplToJson(
      this,
    );
  }
}

abstract class _ResourceError implements ResourceError {
  const factory _ResourceError({final String? reason, final bool? error}) =
      _$ResourceErrorImpl;

  factory _ResourceError.fromJson(Map<String, dynamic> json) =
      _$ResourceErrorImpl.fromJson;

  @override
  String? get reason;
  @override
  bool? get error;
  @override
  @JsonKey(ignore: true)
  _$$ResourceErrorImplCopyWith<_$ResourceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
