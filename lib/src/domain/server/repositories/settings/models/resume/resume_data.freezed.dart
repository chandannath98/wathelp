// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResumeData _$ResumeDataFromJson(Map<String, dynamic> json) {
  return _ResumeData.fromJson(json);
}

/// @nodoc
mixin _$ResumeData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  String? get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  String? get fileSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeDataCopyWith<ResumeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeDataCopyWith<$Res> {
  factory $ResumeDataCopyWith(
          ResumeData value, $Res Function(ResumeData) then) =
      _$ResumeDataCopyWithImpl<$Res, ResumeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file') String? file,
      @JsonKey(name: 'file_size') String? fileSize});
}

/// @nodoc
class _$ResumeDataCopyWithImpl<$Res, $Val extends ResumeData>
    implements $ResumeDataCopyWith<$Res> {
  _$ResumeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeDataImplCopyWith<$Res>
    implements $ResumeDataCopyWith<$Res> {
  factory _$$ResumeDataImplCopyWith(
          _$ResumeDataImpl value, $Res Function(_$ResumeDataImpl) then) =
      __$$ResumeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file') String? file,
      @JsonKey(name: 'file_size') String? fileSize});
}

/// @nodoc
class __$$ResumeDataImplCopyWithImpl<$Res>
    extends _$ResumeDataCopyWithImpl<$Res, _$ResumeDataImpl>
    implements _$$ResumeDataImplCopyWith<$Res> {
  __$$ResumeDataImplCopyWithImpl(
      _$ResumeDataImpl _value, $Res Function(_$ResumeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_$ResumeDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeDataImpl with DiagnosticableTreeMixin implements _ResumeData {
  const _$ResumeDataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'file') this.file,
      @JsonKey(name: 'file_size') this.fileSize});

  factory _$ResumeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'file')
  final String? file;
  @override
  @JsonKey(name: 'file_size')
  final String? fileSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResumeData(id: $id, name: $name, file: $file, fileSize: $fileSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResumeData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('fileSize', fileSize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, file, fileSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeDataImplCopyWith<_$ResumeDataImpl> get copyWith =>
      __$$ResumeDataImplCopyWithImpl<_$ResumeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeDataImplToJson(
      this,
    );
  }
}

abstract class _ResumeData implements ResumeData {
  const factory _ResumeData(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'file') final String? file,
      @JsonKey(name: 'file_size') final String? fileSize}) = _$ResumeDataImpl;

  factory _ResumeData.fromJson(Map<String, dynamic> json) =
      _$ResumeDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'file')
  String? get file;
  @override
  @JsonKey(name: 'file_size')
  String? get fileSize;
  @override
  @JsonKey(ignore: true)
  _$$ResumeDataImplCopyWith<_$ResumeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
