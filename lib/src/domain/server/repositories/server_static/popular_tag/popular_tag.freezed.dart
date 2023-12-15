// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularTag _$PopularTagFromJson(Map<String, dynamic> json) {
  return _PopularTag.fromJson(json);
}

/// @nodoc
mixin _$PopularTag {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'jobs_count')
  int? get jobsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags_count')
  int? get tagsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularTagCopyWith<PopularTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularTagCopyWith<$Res> {
  factory $PopularTagCopyWith(
          PopularTag value, $Res Function(PopularTag) then) =
      _$PopularTagCopyWithImpl<$Res, PopularTag>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'jobs_count') int? jobsCount,
      @JsonKey(name: 'tags_count') int? tagsCount});
}

/// @nodoc
class _$PopularTagCopyWithImpl<$Res, $Val extends PopularTag>
    implements $PopularTagCopyWith<$Res> {
  _$PopularTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? jobsCount = freezed,
    Object? tagsCount = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      jobsCount: freezed == jobsCount
          ? _value.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsCount: freezed == tagsCount
          ? _value.tagsCount
          : tagsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularTagImplCopyWith<$Res>
    implements $PopularTagCopyWith<$Res> {
  factory _$$PopularTagImplCopyWith(
          _$PopularTagImpl value, $Res Function(_$PopularTagImpl) then) =
      __$$PopularTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'jobs_count') int? jobsCount,
      @JsonKey(name: 'tags_count') int? tagsCount});
}

/// @nodoc
class __$$PopularTagImplCopyWithImpl<$Res>
    extends _$PopularTagCopyWithImpl<$Res, _$PopularTagImpl>
    implements _$$PopularTagImplCopyWith<$Res> {
  __$$PopularTagImplCopyWithImpl(
      _$PopularTagImpl _value, $Res Function(_$PopularTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? jobsCount = freezed,
    Object? tagsCount = freezed,
  }) {
    return _then(_$PopularTagImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      jobsCount: freezed == jobsCount
          ? _value.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsCount: freezed == tagsCount
          ? _value.tagsCount
          : tagsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularTagImpl with DiagnosticableTreeMixin implements _PopularTag {
  const _$PopularTagImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'jobs_count') this.jobsCount,
      @JsonKey(name: 'tags_count') this.tagsCount});

  factory _$PopularTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularTagImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'jobs_count')
  final int? jobsCount;
  @override
  @JsonKey(name: 'tags_count')
  final int? tagsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PopularTag(id: $id, name: $name, slug: $slug, jobsCount: $jobsCount, tagsCount: $tagsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PopularTag'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('jobsCount', jobsCount))
      ..add(DiagnosticsProperty('tagsCount', tagsCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.jobsCount, jobsCount) ||
                other.jobsCount == jobsCount) &&
            (identical(other.tagsCount, tagsCount) ||
                other.tagsCount == tagsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, jobsCount, tagsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularTagImplCopyWith<_$PopularTagImpl> get copyWith =>
      __$$PopularTagImplCopyWithImpl<_$PopularTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularTagImplToJson(
      this,
    );
  }
}

abstract class _PopularTag implements PopularTag {
  const factory _PopularTag(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'jobs_count') final int? jobsCount,
      @JsonKey(name: 'tags_count') final int? tagsCount}) = _$PopularTagImpl;

  factory _PopularTag.fromJson(Map<String, dynamic> json) =
      _$PopularTagImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'jobs_count')
  int? get jobsCount;
  @override
  @JsonKey(name: 'tags_count')
  int? get tagsCount;
  @override
  @JsonKey(ignore: true)
  _$$PopularTagImplCopyWith<_$PopularTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
