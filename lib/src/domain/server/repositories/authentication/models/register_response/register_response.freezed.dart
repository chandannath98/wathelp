// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  @JsonKey(name: 'data')
  RegisterData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res, RegisterResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') RegisterData? data,
      @JsonKey(name: 'message') String? message});

  $RegisterDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res, $Val extends RegisterResponse>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegisterDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterResponseImplCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$RegisterResponseImplCopyWith(_$RegisterResponseImpl value,
          $Res Function(_$RegisterResponseImpl) then) =
      __$$RegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') RegisterData? data,
      @JsonKey(name: 'message') String? message});

  @override
  $RegisterDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RegisterResponseImplCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res, _$RegisterResponseImpl>
    implements _$$RegisterResponseImplCopyWith<$Res> {
  __$$RegisterResponseImplCopyWithImpl(_$RegisterResponseImpl _value,
      $Res Function(_$RegisterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$RegisterResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterResponseImpl
    with DiagnosticableTreeMixin
    implements _RegisterResponse {
  const _$RegisterResponseImpl(
      {@JsonKey(name: 'data') this.data,
      @JsonKey(name: 'message') this.message});

  factory _$RegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final RegisterData? data;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResponse(data: $data, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResponse'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      __$$RegisterResponseImplCopyWithImpl<_$RegisterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  const factory _RegisterResponse(
          {@JsonKey(name: 'data') final RegisterData? data,
          @JsonKey(name: 'message') final String? message}) =
      _$RegisterResponseImpl;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  RegisterData? get data;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
