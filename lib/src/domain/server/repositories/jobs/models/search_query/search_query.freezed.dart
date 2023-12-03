// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) {
  return _SearchQuery.fromJson(json);
}

/// @nodoc
mixin _$SearchQuery {
  @JsonKey(name: 'keyword')
  String? get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  int? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_role')
  int? get jobRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_min')
  int? get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_max')
  int? get maxPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag')
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience')
  int? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'education')
  int? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_remote')
  int? get isRemote => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type')
  int? get jobType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_by')
  JobSortBy? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchQueryCopyWith<SearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCopyWith<$Res> {
  factory $SearchQueryCopyWith(
          SearchQuery value, $Res Function(SearchQuery) then) =
      _$SearchQueryCopyWithImpl<$Res, SearchQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'keyword') String? query,
      @JsonKey(name: 'category') int? category,
      @JsonKey(name: 'job_role') int? jobRole,
      @JsonKey(name: 'price_min') int? minPrice,
      @JsonKey(name: 'price_max') int? maxPrice,
      @JsonKey(name: 'tag') String? tag,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'experience') int? experience,
      @JsonKey(name: 'education') int? education,
      @JsonKey(name: 'is_remote') int? isRemote,
      @JsonKey(name: 'job_type') int? jobType,
      @JsonKey(name: 'sort_by') JobSortBy? sortBy});
}

/// @nodoc
class _$SearchQueryCopyWithImpl<$Res, $Val extends SearchQuery>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? category = freezed,
    Object? jobRole = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? tag = freezed,
    Object? location = freezed,
    Object? experience = freezed,
    Object? education = freezed,
    Object? isRemote = freezed,
    Object? jobType = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      jobRole: freezed == jobRole
          ? _value.jobRole
          : jobRole // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as int?,
      isRemote: freezed == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as int?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as JobSortBy?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchQueryImplCopyWith<$Res>
    implements $SearchQueryCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
          _$SearchQueryImpl value, $Res Function(_$SearchQueryImpl) then) =
      __$$SearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'keyword') String? query,
      @JsonKey(name: 'category') int? category,
      @JsonKey(name: 'job_role') int? jobRole,
      @JsonKey(name: 'price_min') int? minPrice,
      @JsonKey(name: 'price_max') int? maxPrice,
      @JsonKey(name: 'tag') String? tag,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'experience') int? experience,
      @JsonKey(name: 'education') int? education,
      @JsonKey(name: 'is_remote') int? isRemote,
      @JsonKey(name: 'job_type') int? jobType,
      @JsonKey(name: 'sort_by') JobSortBy? sortBy});
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchQueryCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
      _$SearchQueryImpl _value, $Res Function(_$SearchQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? category = freezed,
    Object? jobRole = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? tag = freezed,
    Object? location = freezed,
    Object? experience = freezed,
    Object? education = freezed,
    Object? isRemote = freezed,
    Object? jobType = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$SearchQueryImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      jobRole: freezed == jobRole
          ? _value.jobRole
          : jobRole // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as int?,
      isRemote: freezed == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as int?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as JobSortBy?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchQueryImpl with DiagnosticableTreeMixin implements _SearchQuery {
  const _$SearchQueryImpl(
      {@JsonKey(name: 'keyword') this.query,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'job_role') this.jobRole,
      @JsonKey(name: 'price_min') this.minPrice,
      @JsonKey(name: 'price_max') this.maxPrice,
      @JsonKey(name: 'tag') this.tag,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'experience') this.experience,
      @JsonKey(name: 'education') this.education,
      @JsonKey(name: 'is_remote') this.isRemote,
      @JsonKey(name: 'job_type') this.jobType,
      @JsonKey(name: 'sort_by') this.sortBy});

  factory _$SearchQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchQueryImplFromJson(json);

  @override
  @JsonKey(name: 'keyword')
  final String? query;
  @override
  @JsonKey(name: 'category')
  final int? category;
  @override
  @JsonKey(name: 'job_role')
  final int? jobRole;
  @override
  @JsonKey(name: 'price_min')
  final int? minPrice;
  @override
  @JsonKey(name: 'price_max')
  final int? maxPrice;
  @override
  @JsonKey(name: 'tag')
  final String? tag;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'experience')
  final int? experience;
  @override
  @JsonKey(name: 'education')
  final int? education;
  @override
  @JsonKey(name: 'is_remote')
  final int? isRemote;
  @override
  @JsonKey(name: 'job_type')
  final int? jobType;
  @override
  @JsonKey(name: 'sort_by')
  final JobSortBy? sortBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchQuery(query: $query, category: $category, jobRole: $jobRole, minPrice: $minPrice, maxPrice: $maxPrice, tag: $tag, location: $location, experience: $experience, education: $education, isRemote: $isRemote, jobType: $jobType, sortBy: $sortBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchQuery'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('jobRole', jobRole))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('experience', experience))
      ..add(DiagnosticsProperty('education', education))
      ..add(DiagnosticsProperty('isRemote', isRemote))
      ..add(DiagnosticsProperty('jobType', jobType))
      ..add(DiagnosticsProperty('sortBy', sortBy));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.jobRole, jobRole) || other.jobRole == jobRole) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.isRemote, isRemote) ||
                other.isRemote == isRemote) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      category,
      jobRole,
      minPrice,
      maxPrice,
      tag,
      location,
      experience,
      education,
      isRemote,
      jobType,
      sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchQueryImplToJson(
      this,
    );
  }
}

abstract class _SearchQuery implements SearchQuery {
  const factory _SearchQuery(
      {@JsonKey(name: 'keyword') final String? query,
      @JsonKey(name: 'category') final int? category,
      @JsonKey(name: 'job_role') final int? jobRole,
      @JsonKey(name: 'price_min') final int? minPrice,
      @JsonKey(name: 'price_max') final int? maxPrice,
      @JsonKey(name: 'tag') final String? tag,
      @JsonKey(name: 'location') final String? location,
      @JsonKey(name: 'experience') final int? experience,
      @JsonKey(name: 'education') final int? education,
      @JsonKey(name: 'is_remote') final int? isRemote,
      @JsonKey(name: 'job_type') final int? jobType,
      @JsonKey(name: 'sort_by') final JobSortBy? sortBy}) = _$SearchQueryImpl;

  factory _SearchQuery.fromJson(Map<String, dynamic> json) =
      _$SearchQueryImpl.fromJson;

  @override
  @JsonKey(name: 'keyword')
  String? get query;
  @override
  @JsonKey(name: 'category')
  int? get category;
  @override
  @JsonKey(name: 'job_role')
  int? get jobRole;
  @override
  @JsonKey(name: 'price_min')
  int? get minPrice;
  @override
  @JsonKey(name: 'price_max')
  int? get maxPrice;
  @override
  @JsonKey(name: 'tag')
  String? get tag;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'experience')
  int? get experience;
  @override
  @JsonKey(name: 'education')
  int? get education;
  @override
  @JsonKey(name: 'is_remote')
  int? get isRemote;
  @override
  @JsonKey(name: 'job_type')
  int? get jobType;
  @override
  @JsonKey(name: 'sort_by')
  JobSortBy? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
