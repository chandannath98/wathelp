// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobType _$JobTypeFromJson(Map<String, dynamic> json) {
  return _JobType.fromJson(json);
}

/// @nodoc
mixin _$JobType {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTypeCopyWith<JobType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTypeCopyWith<$Res> {
  factory $JobTypeCopyWith(JobType value, $Res Function(JobType) then) =
      _$JobTypeCopyWithImpl<$Res, JobType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$JobTypeCopyWithImpl<$Res, $Val extends JobType>
    implements $JobTypeCopyWith<$Res> {
  _$JobTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobTypeImplCopyWith<$Res> implements $JobTypeCopyWith<$Res> {
  factory _$$JobTypeImplCopyWith(
          _$JobTypeImpl value, $Res Function(_$JobTypeImpl) then) =
      __$$JobTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$JobTypeImplCopyWithImpl<$Res>
    extends _$JobTypeCopyWithImpl<$Res, _$JobTypeImpl>
    implements _$$JobTypeImplCopyWith<$Res> {
  __$$JobTypeImplCopyWithImpl(
      _$JobTypeImpl _value, $Res Function(_$JobTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$JobTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobTypeImpl with DiagnosticableTreeMixin implements _JobType {
  const _$JobTypeImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$JobTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobTypeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobType(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobTypeImplCopyWith<_$JobTypeImpl> get copyWith =>
      __$$JobTypeImplCopyWithImpl<_$JobTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobTypeImplToJson(
      this,
    );
  }
}

abstract class _JobType implements JobType {
  const factory _JobType(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$JobTypeImpl;

  factory _JobType.fromJson(Map<String, dynamic> json) = _$JobTypeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$JobTypeImplCopyWith<_$JobTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
