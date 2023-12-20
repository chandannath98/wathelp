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
  Data? get data => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
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
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
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
              as Data?,
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
  final Data? data;

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
          @JsonKey(name: 'data') final Data? data}) =
      _$UpdatePersonalSettingResponseImpl;

  factory _UpdatePersonalSettingResponse.fromJson(Map<String, dynamic> json) =
      _$UpdatePersonalSettingResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePersonalSettingResponseImplCopyWith<
          _$UpdatePersonalSettingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_id')
  String? get experienceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_id')
  String? get educationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'website')
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'experience_id') String? experienceId,
      @JsonKey(name: 'education_id') String? educationId,
      @JsonKey(name: 'website') String? website,
      @JsonKey(name: 'birth_date') String? birthDate});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? experienceId = freezed,
    Object? educationId = freezed,
    Object? website = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceId: freezed == experienceId
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as String?,
      educationId: freezed == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'experience_id') String? experienceId,
      @JsonKey(name: 'education_id') String? educationId,
      @JsonKey(name: 'website') String? website,
      @JsonKey(name: 'birth_date') String? birthDate});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? experienceId = freezed,
    Object? educationId = freezed,
    Object? website = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(_$DataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceId: freezed == experienceId
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as String?,
      educationId: freezed == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl with DiagnosticableTreeMixin implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'experience_id') this.experienceId,
      @JsonKey(name: 'education_id') this.educationId,
      @JsonKey(name: 'website') this.website,
      @JsonKey(name: 'birth_date') this.birthDate});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'experience_id')
  final String? experienceId;
  @override
  @JsonKey(name: 'education_id')
  final String? educationId;
  @override
  @JsonKey(name: 'website')
  final String? website;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(name: $name, title: $title, experienceId: $experienceId, educationId: $educationId, website: $website, birthDate: $birthDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('experienceId', experienceId))
      ..add(DiagnosticsProperty('educationId', educationId))
      ..add(DiagnosticsProperty('website', website))
      ..add(DiagnosticsProperty('birthDate', birthDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.experienceId, experienceId) ||
                other.experienceId == experienceId) &&
            (identical(other.educationId, educationId) ||
                other.educationId == educationId) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, title, experienceId, educationId, website, birthDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'experience_id') final String? experienceId,
      @JsonKey(name: 'education_id') final String? educationId,
      @JsonKey(name: 'website') final String? website,
      @JsonKey(name: 'birth_date') final String? birthDate}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'experience_id')
  String? get experienceId;
  @override
  @JsonKey(name: 'education_id')
  String? get educationId;
  @override
  @JsonKey(name: 'website')
  String? get website;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
