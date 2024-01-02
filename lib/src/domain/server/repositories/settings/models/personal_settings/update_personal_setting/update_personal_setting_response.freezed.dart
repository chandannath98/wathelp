// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_personal_setting_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatePersonalSettingResponse _$UpdatePersonalSettingResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdatePersonalSettingResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdatePersonalSettingResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PersonalSettingData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePersonalSettingResponseCopyWith<UpdatePersonalSettingResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePersonalSettingResponseCopyWith<$Res> {
  factory $UpdatePersonalSettingResponseCopyWith(
          UpdatePersonalSettingResponse value,
          $Res Function(UpdatePersonalSettingResponse) then) =
      _$UpdatePersonalSettingResponseCopyWithImpl<$Res,
          UpdatePersonalSettingResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PersonalSettingData? data});

  $PersonalSettingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdatePersonalSettingResponseCopyWithImpl<$Res,
        $Val extends UpdatePersonalSettingResponse>
    implements $UpdatePersonalSettingResponseCopyWith<$Res> {
  _$UpdatePersonalSettingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PersonalSettingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalSettingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PersonalSettingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePersonalSettingResponseImplCopyWith<$Res>
    implements $UpdatePersonalSettingResponseCopyWith<$Res> {
  factory _$$UpdatePersonalSettingResponseImplCopyWith(
          _$UpdatePersonalSettingResponseImpl value,
          $Res Function(_$UpdatePersonalSettingResponseImpl) then) =
      __$$UpdatePersonalSettingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PersonalSettingData? data});

  @override
  $PersonalSettingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdatePersonalSettingResponseImplCopyWithImpl<$Res>
    extends _$UpdatePersonalSettingResponseCopyWithImpl<$Res,
        _$UpdatePersonalSettingResponseImpl>
    implements _$$UpdatePersonalSettingResponseImplCopyWith<$Res> {
  __$$UpdatePersonalSettingResponseImplCopyWithImpl(
      _$UpdatePersonalSettingResponseImpl _value,
      $Res Function(_$UpdatePersonalSettingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdatePersonalSettingResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PersonalSettingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePersonalSettingResponseImpl
    with DiagnosticableTreeMixin
    implements _UpdatePersonalSettingResponse {
  const _$UpdatePersonalSettingResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$UpdatePersonalSettingResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePersonalSettingResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final PersonalSettingData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdatePersonalSettingResponse(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdatePersonalSettingResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePersonalSettingResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePersonalSettingResponseImplCopyWith<
          _$UpdatePersonalSettingResponseImpl>
      get copyWith => __$$UpdatePersonalSettingResponseImplCopyWithImpl<
          _$UpdatePersonalSettingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePersonalSettingResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdatePersonalSettingResponse
    implements UpdatePersonalSettingResponse {
  const factory _UpdatePersonalSettingResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final PersonalSettingData? data}) =
      _$UpdatePersonalSettingResponseImpl;

  factory _UpdatePersonalSettingResponse.fromJson(Map<String, dynamic> json) =
      _$UpdatePersonalSettingResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  PersonalSettingData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePersonalSettingResponseImplCopyWith<
          _$UpdatePersonalSettingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
