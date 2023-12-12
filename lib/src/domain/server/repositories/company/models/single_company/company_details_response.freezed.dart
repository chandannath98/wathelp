// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyDetailsResponse _$CompanyDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _CompanyDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyDetailsResponse {
  @JsonKey(name: 'companyDetails')
  CompanyDetails? get companyDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_jobs')
  PaginatedOpenPositionsData? get openJobs =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDetailsResponseCopyWith<CompanyDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDetailsResponseCopyWith<$Res> {
  factory $CompanyDetailsResponseCopyWith(CompanyDetailsResponse value,
          $Res Function(CompanyDetailsResponse) then) =
      _$CompanyDetailsResponseCopyWithImpl<$Res, CompanyDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'companyDetails') CompanyDetails? companyDetails,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'open_jobs') PaginatedOpenPositionsData? openJobs});

  $CompanyDetailsCopyWith<$Res>? get companyDetails;
  $UserCopyWith<$Res>? get user;
  $PaginatedOpenPositionsDataCopyWith<$Res>? get openJobs;
}

/// @nodoc
class _$CompanyDetailsResponseCopyWithImpl<$Res,
        $Val extends CompanyDetailsResponse>
    implements $CompanyDetailsResponseCopyWith<$Res> {
  _$CompanyDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyDetails = freezed,
    Object? user = freezed,
    Object? openJobs = freezed,
  }) {
    return _then(_value.copyWith(
      companyDetails: freezed == companyDetails
          ? _value.companyDetails
          : companyDetails // ignore: cast_nullable_to_non_nullable
              as CompanyDetails?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      openJobs: freezed == openJobs
          ? _value.openJobs
          : openJobs // ignore: cast_nullable_to_non_nullable
              as PaginatedOpenPositionsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyDetailsCopyWith<$Res>? get companyDetails {
    if (_value.companyDetails == null) {
      return null;
    }

    return $CompanyDetailsCopyWith<$Res>(_value.companyDetails!, (value) {
      return _then(_value.copyWith(companyDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedOpenPositionsDataCopyWith<$Res>? get openJobs {
    if (_value.openJobs == null) {
      return null;
    }

    return $PaginatedOpenPositionsDataCopyWith<$Res>(_value.openJobs!, (value) {
      return _then(_value.copyWith(openJobs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyDetailsResponseImplCopyWith<$Res>
    implements $CompanyDetailsResponseCopyWith<$Res> {
  factory _$$CompanyDetailsResponseImplCopyWith(
          _$CompanyDetailsResponseImpl value,
          $Res Function(_$CompanyDetailsResponseImpl) then) =
      __$$CompanyDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'companyDetails') CompanyDetails? companyDetails,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'open_jobs') PaginatedOpenPositionsData? openJobs});

  @override
  $CompanyDetailsCopyWith<$Res>? get companyDetails;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $PaginatedOpenPositionsDataCopyWith<$Res>? get openJobs;
}

/// @nodoc
class __$$CompanyDetailsResponseImplCopyWithImpl<$Res>
    extends _$CompanyDetailsResponseCopyWithImpl<$Res,
        _$CompanyDetailsResponseImpl>
    implements _$$CompanyDetailsResponseImplCopyWith<$Res> {
  __$$CompanyDetailsResponseImplCopyWithImpl(
      _$CompanyDetailsResponseImpl _value,
      $Res Function(_$CompanyDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyDetails = freezed,
    Object? user = freezed,
    Object? openJobs = freezed,
  }) {
    return _then(_$CompanyDetailsResponseImpl(
      companyDetails: freezed == companyDetails
          ? _value.companyDetails
          : companyDetails // ignore: cast_nullable_to_non_nullable
              as CompanyDetails?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      openJobs: freezed == openJobs
          ? _value.openJobs
          : openJobs // ignore: cast_nullable_to_non_nullable
              as PaginatedOpenPositionsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDetailsResponseImpl
    with DiagnosticableTreeMixin
    implements _CompanyDetailsResponse {
  const _$CompanyDetailsResponseImpl(
      {@JsonKey(name: 'companyDetails') this.companyDetails,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'open_jobs') this.openJobs});

  factory _$CompanyDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDetailsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'companyDetails')
  final CompanyDetails? companyDetails;
  @override
  @JsonKey(name: 'user')
  final User? user;
  @override
  @JsonKey(name: 'open_jobs')
  final PaginatedOpenPositionsData? openJobs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyDetailsResponse(companyDetails: $companyDetails, user: $user, openJobs: $openJobs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyDetailsResponse'))
      ..add(DiagnosticsProperty('companyDetails', companyDetails))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('openJobs', openJobs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDetailsResponseImpl &&
            (identical(other.companyDetails, companyDetails) ||
                other.companyDetails == companyDetails) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.openJobs, openJobs) ||
                other.openJobs == openJobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyDetails, user, openJobs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDetailsResponseImplCopyWith<_$CompanyDetailsResponseImpl>
      get copyWith => __$$CompanyDetailsResponseImplCopyWithImpl<
          _$CompanyDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyDetailsResponse implements CompanyDetailsResponse {
  const factory _CompanyDetailsResponse(
      {@JsonKey(name: 'companyDetails') final CompanyDetails? companyDetails,
      @JsonKey(name: 'user') final User? user,
      @JsonKey(name: 'open_jobs')
      final PaginatedOpenPositionsData?
          openJobs}) = _$CompanyDetailsResponseImpl;

  factory _CompanyDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyDetailsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'companyDetails')
  CompanyDetails? get companyDetails;
  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(name: 'open_jobs')
  PaginatedOpenPositionsData? get openJobs;
  @override
  @JsonKey(ignore: true)
  _$$CompanyDetailsResponseImplCopyWith<_$CompanyDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
