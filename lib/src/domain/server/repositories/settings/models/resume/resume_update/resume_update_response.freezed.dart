// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResumeUpdateResponse _$ResumeUpdateResponseFromJson(Map<String, dynamic> json) {
  return _ResumeUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$ResumeUpdateResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UpdateResumeData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeUpdateResponseCopyWith<ResumeUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeUpdateResponseCopyWith<$Res> {
  factory $ResumeUpdateResponseCopyWith(ResumeUpdateResponse value,
          $Res Function(ResumeUpdateResponse) then) =
      _$ResumeUpdateResponseCopyWithImpl<$Res, ResumeUpdateResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') UpdateResumeData? data});

  $UpdateResumeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResumeUpdateResponseCopyWithImpl<$Res,
        $Val extends ResumeUpdateResponse>
    implements $ResumeUpdateResponseCopyWith<$Res> {
  _$ResumeUpdateResponseCopyWithImpl(this._value, this._then);

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
              as UpdateResumeData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateResumeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateResumeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeUpdateResponseImplCopyWith<$Res>
    implements $ResumeUpdateResponseCopyWith<$Res> {
  factory _$$ResumeUpdateResponseImplCopyWith(_$ResumeUpdateResponseImpl value,
          $Res Function(_$ResumeUpdateResponseImpl) then) =
      __$$ResumeUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') UpdateResumeData? data});

  @override
  $UpdateResumeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResumeUpdateResponseImplCopyWithImpl<$Res>
    extends _$ResumeUpdateResponseCopyWithImpl<$Res, _$ResumeUpdateResponseImpl>
    implements _$$ResumeUpdateResponseImplCopyWith<$Res> {
  __$$ResumeUpdateResponseImplCopyWithImpl(_$ResumeUpdateResponseImpl _value,
      $Res Function(_$ResumeUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResumeUpdateResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateResumeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeUpdateResponseImpl
    with DiagnosticableTreeMixin
    implements _ResumeUpdateResponse {
  const _$ResumeUpdateResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ResumeUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeUpdateResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final UpdateResumeData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResumeUpdateResponse(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResumeUpdateResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeUpdateResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeUpdateResponseImplCopyWith<_$ResumeUpdateResponseImpl>
      get copyWith =>
          __$$ResumeUpdateResponseImplCopyWithImpl<_$ResumeUpdateResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _ResumeUpdateResponse implements ResumeUpdateResponse {
  const factory _ResumeUpdateResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final UpdateResumeData? data}) =
      _$ResumeUpdateResponseImpl;

  factory _ResumeUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$ResumeUpdateResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  UpdateResumeData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResumeUpdateResponseImplCopyWith<_$ResumeUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateResumeData _$UpdateResumeDataFromJson(Map<String, dynamic> json) {
  return _UpdateResumeData.fromJson(json);
}

/// @nodoc
mixin _$UpdateResumeData {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'candidate_id')
  int? get candidateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  String? get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  String? get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateResumeDataCopyWith<UpdateResumeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateResumeDataCopyWith<$Res> {
  factory $UpdateResumeDataCopyWith(
          UpdateResumeData value, $Res Function(UpdateResumeData) then) =
      _$UpdateResumeDataCopyWithImpl<$Res, UpdateResumeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'candidate_id') int? candidateId,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'file_size') String? fileSize,
      @JsonKey(name: 'file_url') String? fileUrl});
}

/// @nodoc
class _$UpdateResumeDataCopyWithImpl<$Res, $Val extends UpdateResumeData>
    implements $UpdateResumeDataCopyWith<$Res> {
  _$UpdateResumeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? candidateId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? fileSize = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      candidateId: freezed == candidateId
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateResumeDataImplCopyWith<$Res>
    implements $UpdateResumeDataCopyWith<$Res> {
  factory _$$UpdateResumeDataImplCopyWith(_$UpdateResumeDataImpl value,
          $Res Function(_$UpdateResumeDataImpl) then) =
      __$$UpdateResumeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'candidate_id') int? candidateId,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'file_size') String? fileSize,
      @JsonKey(name: 'file_url') String? fileUrl});
}

/// @nodoc
class __$$UpdateResumeDataImplCopyWithImpl<$Res>
    extends _$UpdateResumeDataCopyWithImpl<$Res, _$UpdateResumeDataImpl>
    implements _$$UpdateResumeDataImplCopyWith<$Res> {
  __$$UpdateResumeDataImplCopyWithImpl(_$UpdateResumeDataImpl _value,
      $Res Function(_$UpdateResumeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? candidateId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? fileSize = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_$UpdateResumeDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      candidateId: freezed == candidateId
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateResumeDataImpl
    with DiagnosticableTreeMixin
    implements _UpdateResumeData {
  const _$UpdateResumeDataImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'candidate_id') this.candidateId,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'file_size') this.fileSize,
      @JsonKey(name: 'file_url') this.fileUrl});

  factory _$UpdateResumeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateResumeDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'candidate_id')
  final int? candidateId;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'file_size')
  final String? fileSize;
  @override
  @JsonKey(name: 'file_url')
  final String? fileUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateResumeData(name: $name, candidateId: $candidateId, updatedAt: $updatedAt, createdAt: $createdAt, id: $id, fileSize: $fileSize, fileUrl: $fileUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateResumeData'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('candidateId', candidateId))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fileSize', fileSize))
      ..add(DiagnosticsProperty('fileUrl', fileUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateResumeDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.candidateId, candidateId) ||
                other.candidateId == candidateId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, candidateId, updatedAt,
      createdAt, id, fileSize, fileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateResumeDataImplCopyWith<_$UpdateResumeDataImpl> get copyWith =>
      __$$UpdateResumeDataImplCopyWithImpl<_$UpdateResumeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateResumeDataImplToJson(
      this,
    );
  }
}

abstract class _UpdateResumeData implements UpdateResumeData {
  const factory _UpdateResumeData(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'candidate_id') final int? candidateId,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'file_size') final String? fileSize,
          @JsonKey(name: 'file_url') final String? fileUrl}) =
      _$UpdateResumeDataImpl;

  factory _UpdateResumeData.fromJson(Map<String, dynamic> json) =
      _$UpdateResumeDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'candidate_id')
  int? get candidateId;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'file_size')
  String? get fileSize;
  @override
  @JsonKey(name: 'file_url')
  String? get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$$UpdateResumeDataImplCopyWith<_$UpdateResumeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
