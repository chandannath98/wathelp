// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrowseData _$BrowseDataFromJson(Map<String, dynamic> json) {
  return _BrowseData.fromJson(json);
}

/// @nodoc
mixin _$BrowseData {
  @JsonKey(name: 'top_companies')
  List<TopCompanies>? get topCompanies => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_jobs')
  List<FeaturedJobs>? get featuredJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'states')
  States? get states => throw _privateConstructorUsedError;
  @JsonKey(name: 'most_popular_vacancies')
  List<MostPopularVacancies>? get mostPopularVacancies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'popular_categories')
  List<PopularCategories>? get popularCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'testimonial')
  List<Testimonial>? get testimonial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrowseDataCopyWith<BrowseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseDataCopyWith<$Res> {
  factory $BrowseDataCopyWith(
          BrowseData value, $Res Function(BrowseData) then) =
      _$BrowseDataCopyWithImpl<$Res, BrowseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'top_companies') List<TopCompanies>? topCompanies,
      @JsonKey(name: 'featured_jobs') List<FeaturedJobs>? featuredJobs,
      @JsonKey(name: 'states') States? states,
      @JsonKey(name: 'most_popular_vacancies')
      List<MostPopularVacancies>? mostPopularVacancies,
      @JsonKey(name: 'popular_categories')
      List<PopularCategories>? popularCategories,
      @JsonKey(name: 'testimonial') List<Testimonial>? testimonial});

  $StatesCopyWith<$Res>? get states;
}

/// @nodoc
class _$BrowseDataCopyWithImpl<$Res, $Val extends BrowseData>
    implements $BrowseDataCopyWith<$Res> {
  _$BrowseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topCompanies = freezed,
    Object? featuredJobs = freezed,
    Object? states = freezed,
    Object? mostPopularVacancies = freezed,
    Object? popularCategories = freezed,
    Object? testimonial = freezed,
  }) {
    return _then(_value.copyWith(
      topCompanies: freezed == topCompanies
          ? _value.topCompanies
          : topCompanies // ignore: cast_nullable_to_non_nullable
              as List<TopCompanies>?,
      featuredJobs: freezed == featuredJobs
          ? _value.featuredJobs
          : featuredJobs // ignore: cast_nullable_to_non_nullable
              as List<FeaturedJobs>?,
      states: freezed == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as States?,
      mostPopularVacancies: freezed == mostPopularVacancies
          ? _value.mostPopularVacancies
          : mostPopularVacancies // ignore: cast_nullable_to_non_nullable
              as List<MostPopularVacancies>?,
      popularCategories: freezed == popularCategories
          ? _value.popularCategories
          : popularCategories // ignore: cast_nullable_to_non_nullable
              as List<PopularCategories>?,
      testimonial: freezed == testimonial
          ? _value.testimonial
          : testimonial // ignore: cast_nullable_to_non_nullable
              as List<Testimonial>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatesCopyWith<$Res>? get states {
    if (_value.states == null) {
      return null;
    }

    return $StatesCopyWith<$Res>(_value.states!, (value) {
      return _then(_value.copyWith(states: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrowseDataImplCopyWith<$Res>
    implements $BrowseDataCopyWith<$Res> {
  factory _$$BrowseDataImplCopyWith(
          _$BrowseDataImpl value, $Res Function(_$BrowseDataImpl) then) =
      __$$BrowseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'top_companies') List<TopCompanies>? topCompanies,
      @JsonKey(name: 'featured_jobs') List<FeaturedJobs>? featuredJobs,
      @JsonKey(name: 'states') States? states,
      @JsonKey(name: 'most_popular_vacancies')
      List<MostPopularVacancies>? mostPopularVacancies,
      @JsonKey(name: 'popular_categories')
      List<PopularCategories>? popularCategories,
      @JsonKey(name: 'testimonial') List<Testimonial>? testimonial});

  @override
  $StatesCopyWith<$Res>? get states;
}

/// @nodoc
class __$$BrowseDataImplCopyWithImpl<$Res>
    extends _$BrowseDataCopyWithImpl<$Res, _$BrowseDataImpl>
    implements _$$BrowseDataImplCopyWith<$Res> {
  __$$BrowseDataImplCopyWithImpl(
      _$BrowseDataImpl _value, $Res Function(_$BrowseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topCompanies = freezed,
    Object? featuredJobs = freezed,
    Object? states = freezed,
    Object? mostPopularVacancies = freezed,
    Object? popularCategories = freezed,
    Object? testimonial = freezed,
  }) {
    return _then(_$BrowseDataImpl(
      topCompanies: freezed == topCompanies
          ? _value._topCompanies
          : topCompanies // ignore: cast_nullable_to_non_nullable
              as List<TopCompanies>?,
      featuredJobs: freezed == featuredJobs
          ? _value._featuredJobs
          : featuredJobs // ignore: cast_nullable_to_non_nullable
              as List<FeaturedJobs>?,
      states: freezed == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as States?,
      mostPopularVacancies: freezed == mostPopularVacancies
          ? _value._mostPopularVacancies
          : mostPopularVacancies // ignore: cast_nullable_to_non_nullable
              as List<MostPopularVacancies>?,
      popularCategories: freezed == popularCategories
          ? _value._popularCategories
          : popularCategories // ignore: cast_nullable_to_non_nullable
              as List<PopularCategories>?,
      testimonial: freezed == testimonial
          ? _value._testimonial
          : testimonial // ignore: cast_nullable_to_non_nullable
              as List<Testimonial>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrowseDataImpl with DiagnosticableTreeMixin implements _BrowseData {
  const _$BrowseDataImpl(
      {@JsonKey(name: 'top_companies') final List<TopCompanies>? topCompanies,
      @JsonKey(name: 'featured_jobs') final List<FeaturedJobs>? featuredJobs,
      @JsonKey(name: 'states') this.states,
      @JsonKey(name: 'most_popular_vacancies')
      final List<MostPopularVacancies>? mostPopularVacancies,
      @JsonKey(name: 'popular_categories')
      final List<PopularCategories>? popularCategories,
      @JsonKey(name: 'testimonial') final List<Testimonial>? testimonial})
      : _topCompanies = topCompanies,
        _featuredJobs = featuredJobs,
        _mostPopularVacancies = mostPopularVacancies,
        _popularCategories = popularCategories,
        _testimonial = testimonial;

  factory _$BrowseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrowseDataImplFromJson(json);

  final List<TopCompanies>? _topCompanies;
  @override
  @JsonKey(name: 'top_companies')
  List<TopCompanies>? get topCompanies {
    final value = _topCompanies;
    if (value == null) return null;
    if (_topCompanies is EqualUnmodifiableListView) return _topCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FeaturedJobs>? _featuredJobs;
  @override
  @JsonKey(name: 'featured_jobs')
  List<FeaturedJobs>? get featuredJobs {
    final value = _featuredJobs;
    if (value == null) return null;
    if (_featuredJobs is EqualUnmodifiableListView) return _featuredJobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'states')
  final States? states;
  final List<MostPopularVacancies>? _mostPopularVacancies;
  @override
  @JsonKey(name: 'most_popular_vacancies')
  List<MostPopularVacancies>? get mostPopularVacancies {
    final value = _mostPopularVacancies;
    if (value == null) return null;
    if (_mostPopularVacancies is EqualUnmodifiableListView)
      return _mostPopularVacancies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PopularCategories>? _popularCategories;
  @override
  @JsonKey(name: 'popular_categories')
  List<PopularCategories>? get popularCategories {
    final value = _popularCategories;
    if (value == null) return null;
    if (_popularCategories is EqualUnmodifiableListView)
      return _popularCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Testimonial>? _testimonial;
  @override
  @JsonKey(name: 'testimonial')
  List<Testimonial>? get testimonial {
    final value = _testimonial;
    if (value == null) return null;
    if (_testimonial is EqualUnmodifiableListView) return _testimonial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrowseData(topCompanies: $topCompanies, featuredJobs: $featuredJobs, states: $states, mostPopularVacancies: $mostPopularVacancies, popularCategories: $popularCategories, testimonial: $testimonial)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrowseData'))
      ..add(DiagnosticsProperty('topCompanies', topCompanies))
      ..add(DiagnosticsProperty('featuredJobs', featuredJobs))
      ..add(DiagnosticsProperty('states', states))
      ..add(DiagnosticsProperty('mostPopularVacancies', mostPopularVacancies))
      ..add(DiagnosticsProperty('popularCategories', popularCategories))
      ..add(DiagnosticsProperty('testimonial', testimonial));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrowseDataImpl &&
            const DeepCollectionEquality()
                .equals(other._topCompanies, _topCompanies) &&
            const DeepCollectionEquality()
                .equals(other._featuredJobs, _featuredJobs) &&
            (identical(other.states, states) || other.states == states) &&
            const DeepCollectionEquality()
                .equals(other._mostPopularVacancies, _mostPopularVacancies) &&
            const DeepCollectionEquality()
                .equals(other._popularCategories, _popularCategories) &&
            const DeepCollectionEquality()
                .equals(other._testimonial, _testimonial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topCompanies),
      const DeepCollectionEquality().hash(_featuredJobs),
      states,
      const DeepCollectionEquality().hash(_mostPopularVacancies),
      const DeepCollectionEquality().hash(_popularCategories),
      const DeepCollectionEquality().hash(_testimonial));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrowseDataImplCopyWith<_$BrowseDataImpl> get copyWith =>
      __$$BrowseDataImplCopyWithImpl<_$BrowseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrowseDataImplToJson(
      this,
    );
  }
}

abstract class _BrowseData implements BrowseData {
  const factory _BrowseData(
      {@JsonKey(name: 'top_companies') final List<TopCompanies>? topCompanies,
      @JsonKey(name: 'featured_jobs') final List<FeaturedJobs>? featuredJobs,
      @JsonKey(name: 'states') final States? states,
      @JsonKey(name: 'most_popular_vacancies')
      final List<MostPopularVacancies>? mostPopularVacancies,
      @JsonKey(name: 'popular_categories')
      final List<PopularCategories>? popularCategories,
      @JsonKey(name: 'testimonial')
      final List<Testimonial>? testimonial}) = _$BrowseDataImpl;

  factory _BrowseData.fromJson(Map<String, dynamic> json) =
      _$BrowseDataImpl.fromJson;

  @override
  @JsonKey(name: 'top_companies')
  List<TopCompanies>? get topCompanies;
  @override
  @JsonKey(name: 'featured_jobs')
  List<FeaturedJobs>? get featuredJobs;
  @override
  @JsonKey(name: 'states')
  States? get states;
  @override
  @JsonKey(name: 'most_popular_vacancies')
  List<MostPopularVacancies>? get mostPopularVacancies;
  @override
  @JsonKey(name: 'popular_categories')
  List<PopularCategories>? get popularCategories;
  @override
  @JsonKey(name: 'testimonial')
  List<Testimonial>? get testimonial;
  @override
  @JsonKey(ignore: true)
  _$$BrowseDataImplCopyWith<_$BrowseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
