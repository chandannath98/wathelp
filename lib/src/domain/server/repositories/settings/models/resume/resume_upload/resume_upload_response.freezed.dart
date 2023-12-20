// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResumeUploadResponse _$ResumeUploadResponseFromJson(Map<String, dynamic> json) {
  return _ResumeUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$ResumeUploadResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UploadResumeData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeUploadResponseCopyWith<ResumeUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeUploadResponseCopyWith<$Res> {
  factory $ResumeUploadResponseCopyWith(ResumeUploadResponse value,
          $Res Function(ResumeUploadResponse) then) =
      _$ResumeUploadResponseCopyWithImpl<$Res, ResumeUploadResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') UploadResumeData? data});

  $UploadResumeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResumeUploadResponseCopyWithImpl<$Res,
        $Val extends ResumeUploadResponse>
    implements $ResumeUploadResponseCopyWith<$Res> {
  _$ResumeUploadResponseCopyWithImpl(this._value, this._then);

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
              as UploadResumeData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadResumeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UploadResumeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeUploadResponseImplCopyWith<$Res>
    implements $ResumeUploadResponseCopyWith<$Res> {
  factory _$$ResumeUploadResponseImplCopyWith(_$ResumeUploadResponseImpl value,
          $Res Function(_$ResumeUploadResponseImpl) then) =
      __$$ResumeUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') UploadResumeData? data});

  @override
  $UploadResumeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResumeUploadResponseImplCopyWithImpl<$Res>
    extends _$ResumeUploadResponseCopyWithImpl<$Res, _$ResumeUploadResponseImpl>
    implements _$$ResumeUploadResponseImplCopyWith<$Res> {
  __$$ResumeUploadResponseImplCopyWithImpl(_$ResumeUploadResponseImpl _value,
      $Res Function(_$ResumeUploadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResumeUploadResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UploadResumeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeUploadResponseImpl
    with DiagnosticableTreeMixin
    implements _ResumeUploadResponse {
  const _$ResumeUploadResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ResumeUploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeUploadResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final UploadResumeData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResumeUploadResponse(message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResumeUploadResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeUploadResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeUploadResponseImplCopyWith<_$ResumeUploadResponseImpl>
      get copyWith =>
          __$$ResumeUploadResponseImplCopyWithImpl<_$ResumeUploadResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _ResumeUploadResponse implements ResumeUploadResponse {
  const factory _ResumeUploadResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final UploadResumeData? data}) =
      _$ResumeUploadResponseImpl;

  factory _ResumeUploadResponse.fromJson(Map<String, dynamic> json) =
      _$ResumeUploadResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  UploadResumeData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResumeUploadResponseImplCopyWith<_$ResumeUploadResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadResumeData _$UploadResumeDataFromJson(Map<String, dynamic> json) {
  return _UploadResumeData.fromJson(json);
}

/// @nodoc
mixin _$UploadResumeData {
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
  $UploadResumeDataCopyWith<UploadResumeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResumeDataCopyWith<$Res> {
  factory $UploadResumeDataCopyWith(
          UploadResumeData value, $Res Function(UploadResumeData) then) =
      _$UploadResumeDataCopyWithImpl<$Res, UploadResumeData>;
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
class _$UploadResumeDataCopyWithImpl<$Res, $Val extends UploadResumeData>
    implements $UploadResumeDataCopyWith<$Res> {
  _$UploadResumeDataCopyWithImpl(this._value, this._then);

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
abstract class _$$UploadResumeDataImplCopyWith<$Res>
    implements $UploadResumeDataCopyWith<$Res> {
  factory _$$UploadResumeDataImplCopyWith(_$UploadResumeDataImpl value,
          $Res Function(_$UploadResumeDataImpl) then) =
      __$$UploadResumeDataImplCopyWithImpl<$Res>;
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
class __$$UploadResumeDataImplCopyWithImpl<$Res>
    extends _$UploadResumeDataCopyWithImpl<$Res, _$UploadResumeDataImpl>
    implements _$$UploadResumeDataImplCopyWith<$Res> {
  __$$UploadResumeDataImplCopyWithImpl(_$UploadResumeDataImpl _value,
      $Res Function(_$UploadResumeDataImpl) _then)
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
    return _then(_$UploadResumeDataImpl(
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
class _$UploadResumeDataImpl
    with DiagnosticableTreeMixin
    implements _UploadResumeData {
  const _$UploadResumeDataImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'candidate_id') this.candidateId,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'file_size') this.fileSize,
      @JsonKey(name: 'file_url') this.fileUrl});

  factory _$UploadResumeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResumeDataImplFromJson(json);

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
    return 'UploadResumeData(name: $name, candidateId: $candidateId, updatedAt: $updatedAt, createdAt: $createdAt, id: $id, fileSize: $fileSize, fileUrl: $fileUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadResumeData'))
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
            other is _$UploadResumeDataImpl &&
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
  _$$UploadResumeDataImplCopyWith<_$UploadResumeDataImpl> get copyWith =>
      __$$UploadResumeDataImplCopyWithImpl<_$UploadResumeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResumeDataImplToJson(
      this,
    );
  }
}

abstract class _UploadResumeData implements UploadResumeData {
  const factory _UploadResumeData(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'candidate_id') final int? candidateId,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'file_size') final String? fileSize,
          @JsonKey(name: 'file_url') final String? fileUrl}) =
      _$UploadResumeDataImpl;

  factory _UploadResumeData.fromJson(Map<String, dynamic> json) =
      _$UploadResumeDataImpl.fromJson;

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
  _$$UploadResumeDataImplCopyWith<_$UploadResumeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
