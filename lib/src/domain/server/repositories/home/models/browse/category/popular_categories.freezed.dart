// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularCategories _$PopularCategoriesFromJson(Map<String, dynamic> json) {
  return _PopularCategories.fromJson(json);
}

/// @nodoc
mixin _$PopularCategories {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_svg')
  bool? get isSvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_jobs_count')
  int? get openJobsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularCategoriesCopyWith<PopularCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCategoriesCopyWith<$Res> {
  factory $PopularCategoriesCopyWith(
          PopularCategories value, $Res Function(PopularCategories) then) =
      _$PopularCategoriesCopyWithImpl<$Res, PopularCategories>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'is_svg') bool? isSvg,
      @JsonKey(name: 'open_jobs_count') int? openJobsCount});
}

/// @nodoc
class _$PopularCategoriesCopyWithImpl<$Res, $Val extends PopularCategories>
    implements $PopularCategoriesCopyWith<$Res> {
  _$PopularCategoriesCopyWithImpl(this._value, this._then);

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
    Object? isSvg = freezed,
    Object? openJobsCount = freezed,
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
      isSvg: freezed == isSvg
          ? _value.isSvg
          : isSvg // ignore: cast_nullable_to_non_nullable
              as bool?,
      openJobsCount: freezed == openJobsCount
          ? _value.openJobsCount
          : openJobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularCategoriesImplCopyWith<$Res>
    implements $PopularCategoriesCopyWith<$Res> {
  factory _$$PopularCategoriesImplCopyWith(_$PopularCategoriesImpl value,
          $Res Function(_$PopularCategoriesImpl) then) =
      __$$PopularCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'is_svg') bool? isSvg,
      @JsonKey(name: 'open_jobs_count') int? openJobsCount});
}

/// @nodoc
class __$$PopularCategoriesImplCopyWithImpl<$Res>
    extends _$PopularCategoriesCopyWithImpl<$Res, _$PopularCategoriesImpl>
    implements _$$PopularCategoriesImplCopyWith<$Res> {
  __$$PopularCategoriesImplCopyWithImpl(_$PopularCategoriesImpl _value,
      $Res Function(_$PopularCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? isSvg = freezed,
    Object? openJobsCount = freezed,
  }) {
    return _then(_$PopularCategoriesImpl(
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
      isSvg: freezed == isSvg
          ? _value.isSvg
          : isSvg // ignore: cast_nullable_to_non_nullable
              as bool?,
      openJobsCount: freezed == openJobsCount
          ? _value.openJobsCount
          : openJobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularCategoriesImpl
    with DiagnosticableTreeMixin
    implements _PopularCategories {
  const _$PopularCategoriesImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'is_svg') this.isSvg,
      @JsonKey(name: 'open_jobs_count') this.openJobsCount});

  factory _$PopularCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularCategoriesImplFromJson(json);

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
  @JsonKey(name: 'is_svg')
  final bool? isSvg;
  @override
  @JsonKey(name: 'open_jobs_count')
  final int? openJobsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PopularCategories(id: $id, name: $name, image: $image, isSvg: $isSvg, openJobsCount: $openJobsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PopularCategories'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('isSvg', isSvg))
      ..add(DiagnosticsProperty('openJobsCount', openJobsCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularCategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isSvg, isSvg) || other.isSvg == isSvg) &&
            (identical(other.openJobsCount, openJobsCount) ||
                other.openJobsCount == openJobsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, isSvg, openJobsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularCategoriesImplCopyWith<_$PopularCategoriesImpl> get copyWith =>
      __$$PopularCategoriesImplCopyWithImpl<_$PopularCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularCategoriesImplToJson(
      this,
    );
  }
}

abstract class _PopularCategories implements PopularCategories {
  const factory _PopularCategories(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'is_svg') final bool? isSvg,
          @JsonKey(name: 'open_jobs_count') final int? openJobsCount}) =
      _$PopularCategoriesImpl;

  factory _PopularCategories.fromJson(Map<String, dynamic> json) =
      _$PopularCategoriesImpl.fromJson;

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
  @JsonKey(name: 'is_svg')
  bool? get isSvg;
  @override
  @JsonKey(name: 'open_jobs_count')
  int? get openJobsCount;
  @override
  @JsonKey(ignore: true)
  _$$PopularCategoriesImplCopyWith<_$PopularCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
