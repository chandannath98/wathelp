// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_job_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplyJobResponse _$ApplyJobResponseFromJson(Map<String, dynamic> json) {
  return _ApplyJobResponse.fromJson(json);
}

/// @nodoc
mixin _$ApplyJobResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyJobResponseCopyWith<ApplyJobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyJobResponseCopyWith<$Res> {
  factory $ApplyJobResponseCopyWith(
          ApplyJobResponse value, $Res Function(ApplyJobResponse) then) =
      _$ApplyJobResponseCopyWithImpl<$Res, ApplyJobResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class _$ApplyJobResponseCopyWithImpl<$Res, $Val extends ApplyJobResponse>
    implements $ApplyJobResponseCopyWith<$Res> {
  _$ApplyJobResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyJobResponseImplCopyWith<$Res>
    implements $ApplyJobResponseCopyWith<$Res> {
  factory _$$ApplyJobResponseImplCopyWith(_$ApplyJobResponseImpl value,
          $Res Function(_$ApplyJobResponseImpl) then) =
      __$$ApplyJobResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class __$$ApplyJobResponseImplCopyWithImpl<$Res>
    extends _$ApplyJobResponseCopyWithImpl<$Res, _$ApplyJobResponseImpl>
    implements _$$ApplyJobResponseImplCopyWith<$Res> {
  __$$ApplyJobResponseImplCopyWithImpl(_$ApplyJobResponseImpl _value,
      $Res Function(_$ApplyJobResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ApplyJobResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyJobResponseImpl
    with DiagnosticableTreeMixin
    implements _ApplyJobResponse {
  const _$ApplyJobResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'status') this.status});

  factory _$ApplyJobResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyJobResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'status')
  final bool? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplyJobResponse(message: $message, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplyJobResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyJobResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyJobResponseImplCopyWith<_$ApplyJobResponseImpl> get copyWith =>
      __$$ApplyJobResponseImplCopyWithImpl<_$ApplyJobResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyJobResponseImplToJson(
      this,
    );
  }
}

abstract class _ApplyJobResponse implements ApplyJobResponse {
  const factory _ApplyJobResponse(
      {@JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'status') final bool? status}) = _$ApplyJobResponseImpl;

  factory _ApplyJobResponse.fromJson(Map<String, dynamic> json) =
      _$ApplyJobResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$ApplyJobResponseImplCopyWith<_$ApplyJobResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
