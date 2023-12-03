// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobCategory _$JobCategoryFromJson(Map<String, dynamic> json) {
  return _JobCategory.fromJson(json);
}

/// @nodoc
mixin _$JobCategory {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCategoryCopyWith<JobCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCategoryCopyWith<$Res> {
  factory $JobCategoryCopyWith(
          JobCategory value, $Res Function(JobCategory) then) =
      _$JobCategoryCopyWithImpl<$Res, JobCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$JobCategoryCopyWithImpl<$Res, $Val extends JobCategory>
    implements $JobCategoryCopyWith<$Res> {
  _$JobCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobCategoryImplCopyWith<$Res>
    implements $JobCategoryCopyWith<$Res> {
  factory _$$JobCategoryImplCopyWith(
          _$JobCategoryImpl value, $Res Function(_$JobCategoryImpl) then) =
      __$$JobCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$JobCategoryImplCopyWithImpl<$Res>
    extends _$JobCategoryCopyWithImpl<$Res, _$JobCategoryImpl>
    implements _$$JobCategoryImplCopyWith<$Res> {
  __$$JobCategoryImplCopyWithImpl(
      _$JobCategoryImpl _value, $Res Function(_$JobCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$JobCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobCategoryImpl with DiagnosticableTreeMixin implements _JobCategory {
  const _$JobCategoryImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image});

  factory _$JobCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobCategoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobCategory(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobCategoryImplCopyWith<_$JobCategoryImpl> get copyWith =>
      __$$JobCategoryImplCopyWithImpl<_$JobCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobCategoryImplToJson(
      this,
    );
  }
}

abstract class _JobCategory implements JobCategory {
  const factory _JobCategory(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'image') final String? image}) = _$JobCategoryImpl;

  factory _JobCategory.fromJson(Map<String, dynamic> json) =
      _$JobCategoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$JobCategoryImplCopyWith<_$JobCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
