// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResumeDeleteResponse _$ResumeDeleteResponseFromJson(Map<String, dynamic> json) {
  return _ResumeDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ResumeDeleteResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeDeleteResponseCopyWith<ResumeDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeDeleteResponseCopyWith<$Res> {
  factory $ResumeDeleteResponseCopyWith(ResumeDeleteResponse value,
          $Res Function(ResumeDeleteResponse) then) =
      _$ResumeDeleteResponseCopyWithImpl<$Res, ResumeDeleteResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class _$ResumeDeleteResponseCopyWithImpl<$Res,
        $Val extends ResumeDeleteResponse>
    implements $ResumeDeleteResponseCopyWith<$Res> {
  _$ResumeDeleteResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ResumeDeleteResponseImplCopyWith<$Res>
    implements $ResumeDeleteResponseCopyWith<$Res> {
  factory _$$ResumeDeleteResponseImplCopyWith(_$ResumeDeleteResponseImpl value,
          $Res Function(_$ResumeDeleteResponseImpl) then) =
      __$$ResumeDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class __$$ResumeDeleteResponseImplCopyWithImpl<$Res>
    extends _$ResumeDeleteResponseCopyWithImpl<$Res, _$ResumeDeleteResponseImpl>
    implements _$$ResumeDeleteResponseImplCopyWith<$Res> {
  __$$ResumeDeleteResponseImplCopyWithImpl(_$ResumeDeleteResponseImpl _value,
      $Res Function(_$ResumeDeleteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ResumeDeleteResponseImpl(
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
class _$ResumeDeleteResponseImpl
    with DiagnosticableTreeMixin
    implements _ResumeDeleteResponse {
  const _$ResumeDeleteResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'status') this.status});

  factory _$ResumeDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'status')
  final bool? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResumeDeleteResponse(message: $message, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResumeDeleteResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeDeleteResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeDeleteResponseImplCopyWith<_$ResumeDeleteResponseImpl>
      get copyWith =>
          __$$ResumeDeleteResponseImplCopyWithImpl<_$ResumeDeleteResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeDeleteResponseImplToJson(
      this,
    );
  }
}

abstract class _ResumeDeleteResponse implements ResumeDeleteResponse {
  const factory _ResumeDeleteResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'status') final bool? status}) =
      _$ResumeDeleteResponseImpl;

  factory _ResumeDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$ResumeDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$ResumeDeleteResponseImplCopyWith<_$ResumeDeleteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
