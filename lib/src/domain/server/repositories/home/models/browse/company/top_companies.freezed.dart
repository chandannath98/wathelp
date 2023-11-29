// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopCompanies _$TopCompaniesFromJson(Map<String, dynamic> json) {
  return _TopCompanies.fromJson(json);
}

/// @nodoc
mixin _$TopCompanies {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_logo')
  String? get companyLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_jobs_count')
  int? get openJobsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCompaniesCopyWith<TopCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCompaniesCopyWith<$Res> {
  factory $TopCompaniesCopyWith(
          TopCompanies value, $Res Function(TopCompanies) then) =
      _$TopCompaniesCopyWithImpl<$Res, TopCompanies>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'company_logo') String? companyLogo,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'open_jobs_count') int? openJobsCount});
}

/// @nodoc
class _$TopCompaniesCopyWithImpl<$Res, $Val extends TopCompanies>
    implements $TopCompaniesCopyWith<$Res> {
  _$TopCompaniesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? companyLogo = freezed,
    Object? country = freezed,
    Object? openJobsCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogo: freezed == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      openJobsCount: freezed == openJobsCount
          ? _value.openJobsCount
          : openJobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCompaniesImplCopyWith<$Res>
    implements $TopCompaniesCopyWith<$Res> {
  factory _$$TopCompaniesImplCopyWith(
          _$TopCompaniesImpl value, $Res Function(_$TopCompaniesImpl) then) =
      __$$TopCompaniesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'company_logo') String? companyLogo,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'open_jobs_count') int? openJobsCount});
}

/// @nodoc
class __$$TopCompaniesImplCopyWithImpl<$Res>
    extends _$TopCompaniesCopyWithImpl<$Res, _$TopCompaniesImpl>
    implements _$$TopCompaniesImplCopyWith<$Res> {
  __$$TopCompaniesImplCopyWithImpl(
      _$TopCompaniesImpl _value, $Res Function(_$TopCompaniesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? companyLogo = freezed,
    Object? country = freezed,
    Object? openJobsCount = freezed,
  }) {
    return _then(_$TopCompaniesImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogo: freezed == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      openJobsCount: freezed == openJobsCount
          ? _value.openJobsCount
          : openJobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCompaniesImpl with DiagnosticableTreeMixin implements _TopCompanies {
  const _$TopCompaniesImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'company_logo') this.companyLogo,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'open_jobs_count') this.openJobsCount});

  factory _$TopCompaniesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCompaniesImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'company_logo')
  final String? companyLogo;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'open_jobs_count')
  final int? openJobsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopCompanies(name: $name, username: $username, companyLogo: $companyLogo, country: $country, openJobsCount: $openJobsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopCompanies'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('companyLogo', companyLogo))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('openJobsCount', openJobsCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCompaniesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.companyLogo, companyLogo) ||
                other.companyLogo == companyLogo) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.openJobsCount, openJobsCount) ||
                other.openJobsCount == openJobsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, username, companyLogo, country, openJobsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCompaniesImplCopyWith<_$TopCompaniesImpl> get copyWith =>
      __$$TopCompaniesImplCopyWithImpl<_$TopCompaniesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCompaniesImplToJson(
      this,
    );
  }
}

abstract class _TopCompanies implements TopCompanies {
  const factory _TopCompanies(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'company_logo') final String? companyLogo,
          @JsonKey(name: 'country') final String? country,
          @JsonKey(name: 'open_jobs_count') final int? openJobsCount}) =
      _$TopCompaniesImpl;

  factory _TopCompanies.fromJson(Map<String, dynamic> json) =
      _$TopCompaniesImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'company_logo')
  String? get companyLogo;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'open_jobs_count')
  int? get openJobsCount;
  @override
  @JsonKey(ignore: true)
  _$$TopCompaniesImplCopyWith<_$TopCompaniesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
