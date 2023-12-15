// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyQuery _$CompanyQueryFromJson(Map<String, dynamic> json) {
  return _CompanyQuery.fromJson(json);
}

/// @nodoc
mixin _$CompanyQuery {
  @JsonKey(name: 'keyword')
  String? get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'sortBy')
  CompanySearchSort? get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyQueryCopyWith<CompanyQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyQueryCopyWith<$Res> {
  factory $CompanyQueryCopyWith(
          CompanyQuery value, $Res Function(CompanyQuery) then) =
      _$CompanyQueryCopyWithImpl<$Res, CompanyQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'keyword') String? query,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'sortBy') CompanySearchSort? sort});
}

/// @nodoc
class _$CompanyQueryCopyWithImpl<$Res, $Val extends CompanyQuery>
    implements $CompanyQueryCopyWith<$Res> {
  _$CompanyQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? location = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as CompanySearchSort?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyQueryImplCopyWith<$Res>
    implements $CompanyQueryCopyWith<$Res> {
  factory _$$CompanyQueryImplCopyWith(
          _$CompanyQueryImpl value, $Res Function(_$CompanyQueryImpl) then) =
      __$$CompanyQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'keyword') String? query,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'sortBy') CompanySearchSort? sort});
}

/// @nodoc
class __$$CompanyQueryImplCopyWithImpl<$Res>
    extends _$CompanyQueryCopyWithImpl<$Res, _$CompanyQueryImpl>
    implements _$$CompanyQueryImplCopyWith<$Res> {
  __$$CompanyQueryImplCopyWithImpl(
      _$CompanyQueryImpl _value, $Res Function(_$CompanyQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? location = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$CompanyQueryImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as CompanySearchSort?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyQueryImpl with DiagnosticableTreeMixin implements _CompanyQuery {
  const _$CompanyQueryImpl(
      {@JsonKey(name: 'keyword') this.query,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'sortBy') this.sort});

  factory _$CompanyQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyQueryImplFromJson(json);

  @override
  @JsonKey(name: 'keyword')
  final String? query;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'sortBy')
  final CompanySearchSort? sort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyQuery(query: $query, location: $location, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyQuery'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyQueryImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, location, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyQueryImplCopyWith<_$CompanyQueryImpl> get copyWith =>
      __$$CompanyQueryImplCopyWithImpl<_$CompanyQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyQueryImplToJson(
      this,
    );
  }
}

abstract class _CompanyQuery implements CompanyQuery {
  const factory _CompanyQuery(
          {@JsonKey(name: 'keyword') final String? query,
          @JsonKey(name: 'location') final String? location,
          @JsonKey(name: 'sortBy') final CompanySearchSort? sort}) =
      _$CompanyQueryImpl;

  factory _CompanyQuery.fromJson(Map<String, dynamic> json) =
      _$CompanyQueryImpl.fromJson;

  @override
  @JsonKey(name: 'keyword')
  String? get query;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'sortBy')
  CompanySearchSort? get sort;
  @override
  @JsonKey(ignore: true)
  _$$CompanyQueryImplCopyWith<_$CompanyQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
