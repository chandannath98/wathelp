// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'industry_type_id')
  int? get industryTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_type_id')
  int? get organizationTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_size_id')
  int? get teamSizeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'establishment_date')
  DateTime? get establishmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'website')
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_completion')
  bool? get profileCompletion => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'vision')
  String? get vision => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_views')
  int? get totalViews => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'exact_location')
  String? get exactLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'neighborhood')
  String? get neighborhood => throw _privateConstructorUsedError;
  @JsonKey(name: 'locality')
  String? get locality => throw _privateConstructorUsedError;
  @JsonKey(name: 'place')
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcode')
  int? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'long')
  double? get long => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_profile_verified')
  bool? get isProfileVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_verified_at')
  DateTime? get documentVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_feature_enable')
  int? get questionFeatureEnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_url')
  String? get bannerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address')
  String? get fullAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'industry_type_id') int? industryTypeId,
      @JsonKey(name: 'organization_type_id') int? organizationTypeId,
      @JsonKey(name: 'team_size_id') int? teamSizeId,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'establishment_date') DateTime? establishmentDate,
      @JsonKey(name: 'website') String? website,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'profile_completion') bool? profileCompletion,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'vision') String? vision,
      @JsonKey(name: 'total_views') int? totalViews,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'exact_location') String? exactLocation,
      @JsonKey(name: 'neighborhood') String? neighborhood,
      @JsonKey(name: 'locality') String? locality,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'postcode') int? postcode,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'long') double? long,
      @JsonKey(name: 'lat') double? lat,
      @JsonKey(name: 'is_profile_verified') bool? isProfileVerified,
      @JsonKey(name: 'document_verified_at') DateTime? documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable') int? questionFeatureEnable,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl,
      @JsonKey(name: 'full_address') String? fullAddress});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? industryTypeId = freezed,
    Object? organizationTypeId = freezed,
    Object? teamSizeId = freezed,
    Object? logo = freezed,
    Object? banner = freezed,
    Object? establishmentDate = freezed,
    Object? website = freezed,
    Object? visibility = freezed,
    Object? profileCompletion = freezed,
    Object? bio = freezed,
    Object? vision = freezed,
    Object? totalViews = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? exactLocation = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? isProfileVerified = freezed,
    Object? documentVerifiedAt = freezed,
    Object? questionFeatureEnable = freezed,
    Object? logoUrl = freezed,
    Object? bannerUrl = freezed,
    Object? fullAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      industryTypeId: freezed == industryTypeId
          ? _value.industryTypeId
          : industryTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationTypeId: freezed == organizationTypeId
          ? _value.organizationTypeId
          : organizationTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      teamSizeId: freezed == teamSizeId
          ? _value.teamSizeId
          : teamSizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      establishmentDate: freezed == establishmentDate
          ? _value.establishmentDate
          : establishmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      profileCompletion: freezed == profileCompletion
          ? _value.profileCompletion
          : profileCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      vision: freezed == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      totalViews: freezed == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      exactLocation: freezed == exactLocation
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      isProfileVerified: freezed == isProfileVerified
          ? _value.isProfileVerified
          : isProfileVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      documentVerifiedAt: freezed == documentVerifiedAt
          ? _value.documentVerifiedAt
          : documentVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questionFeatureEnable: freezed == questionFeatureEnable
          ? _value.questionFeatureEnable
          : questionFeatureEnable // ignore: cast_nullable_to_non_nullable
              as int?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'industry_type_id') int? industryTypeId,
      @JsonKey(name: 'organization_type_id') int? organizationTypeId,
      @JsonKey(name: 'team_size_id') int? teamSizeId,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'establishment_date') DateTime? establishmentDate,
      @JsonKey(name: 'website') String? website,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'profile_completion') bool? profileCompletion,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'vision') String? vision,
      @JsonKey(name: 'total_views') int? totalViews,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'exact_location') String? exactLocation,
      @JsonKey(name: 'neighborhood') String? neighborhood,
      @JsonKey(name: 'locality') String? locality,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'postcode') int? postcode,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'long') double? long,
      @JsonKey(name: 'lat') double? lat,
      @JsonKey(name: 'is_profile_verified') bool? isProfileVerified,
      @JsonKey(name: 'document_verified_at') DateTime? documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable') int? questionFeatureEnable,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl,
      @JsonKey(name: 'full_address') String? fullAddress});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? industryTypeId = freezed,
    Object? organizationTypeId = freezed,
    Object? teamSizeId = freezed,
    Object? logo = freezed,
    Object? banner = freezed,
    Object? establishmentDate = freezed,
    Object? website = freezed,
    Object? visibility = freezed,
    Object? profileCompletion = freezed,
    Object? bio = freezed,
    Object? vision = freezed,
    Object? totalViews = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? exactLocation = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? isProfileVerified = freezed,
    Object? documentVerifiedAt = freezed,
    Object? questionFeatureEnable = freezed,
    Object? logoUrl = freezed,
    Object? bannerUrl = freezed,
    Object? fullAddress = freezed,
  }) {
    return _then(_$CompanyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      industryTypeId: freezed == industryTypeId
          ? _value.industryTypeId
          : industryTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationTypeId: freezed == organizationTypeId
          ? _value.organizationTypeId
          : organizationTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      teamSizeId: freezed == teamSizeId
          ? _value.teamSizeId
          : teamSizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      establishmentDate: freezed == establishmentDate
          ? _value.establishmentDate
          : establishmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      profileCompletion: freezed == profileCompletion
          ? _value.profileCompletion
          : profileCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      vision: freezed == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      totalViews: freezed == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      exactLocation: freezed == exactLocation
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      isProfileVerified: freezed == isProfileVerified
          ? _value.isProfileVerified
          : isProfileVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      documentVerifiedAt: freezed == documentVerifiedAt
          ? _value.documentVerifiedAt
          : documentVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questionFeatureEnable: freezed == questionFeatureEnable
          ? _value.questionFeatureEnable
          : questionFeatureEnable // ignore: cast_nullable_to_non_nullable
              as int?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl with DiagnosticableTreeMixin implements _Company {
  const _$CompanyImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'industry_type_id') this.industryTypeId,
      @JsonKey(name: 'organization_type_id') this.organizationTypeId,
      @JsonKey(name: 'team_size_id') this.teamSizeId,
      @JsonKey(name: 'logo') this.logo,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'establishment_date') this.establishmentDate,
      @JsonKey(name: 'website') this.website,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'profile_completion') this.profileCompletion,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'vision') this.vision,
      @JsonKey(name: 'total_views') this.totalViews,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'exact_location') this.exactLocation,
      @JsonKey(name: 'neighborhood') this.neighborhood,
      @JsonKey(name: 'locality') this.locality,
      @JsonKey(name: 'place') this.place,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'postcode') this.postcode,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'long') this.long,
      @JsonKey(name: 'lat') this.lat,
      @JsonKey(name: 'is_profile_verified') this.isProfileVerified,
      @JsonKey(name: 'document_verified_at') this.documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable') this.questionFeatureEnable,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'banner_url') this.bannerUrl,
      @JsonKey(name: 'full_address') this.fullAddress});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'industry_type_id')
  final int? industryTypeId;
  @override
  @JsonKey(name: 'organization_type_id')
  final int? organizationTypeId;
  @override
  @JsonKey(name: 'team_size_id')
  final int? teamSizeId;
  @override
  @JsonKey(name: 'logo')
  final String? logo;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'establishment_date')
  final DateTime? establishmentDate;
  @override
  @JsonKey(name: 'website')
  final String? website;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'profile_completion')
  final bool? profileCompletion;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'vision')
  final String? vision;
  @override
  @JsonKey(name: 'total_views')
  final int? totalViews;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'exact_location')
  final String? exactLocation;
  @override
  @JsonKey(name: 'neighborhood')
  final String? neighborhood;
  @override
  @JsonKey(name: 'locality')
  final String? locality;
  @override
  @JsonKey(name: 'place')
  final String? place;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'postcode')
  final int? postcode;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'long')
  final double? long;
  @override
  @JsonKey(name: 'lat')
  final double? lat;
  @override
  @JsonKey(name: 'is_profile_verified')
  final bool? isProfileVerified;
  @override
  @JsonKey(name: 'document_verified_at')
  final DateTime? documentVerifiedAt;
  @override
  @JsonKey(name: 'question_feature_enable')
  final int? questionFeatureEnable;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'banner_url')
  final String? bannerUrl;
  @override
  @JsonKey(name: 'full_address')
  final String? fullAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Company(id: $id, userId: $userId, industryTypeId: $industryTypeId, organizationTypeId: $organizationTypeId, teamSizeId: $teamSizeId, logo: $logo, banner: $banner, establishmentDate: $establishmentDate, website: $website, visibility: $visibility, profileCompletion: $profileCompletion, bio: $bio, vision: $vision, totalViews: $totalViews, createdAt: $createdAt, updatedAt: $updatedAt, address: $address, exactLocation: $exactLocation, neighborhood: $neighborhood, locality: $locality, place: $place, district: $district, postcode: $postcode, region: $region, country: $country, long: $long, lat: $lat, isProfileVerified: $isProfileVerified, documentVerifiedAt: $documentVerifiedAt, questionFeatureEnable: $questionFeatureEnable, logoUrl: $logoUrl, bannerUrl: $bannerUrl, fullAddress: $fullAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Company'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('industryTypeId', industryTypeId))
      ..add(DiagnosticsProperty('organizationTypeId', organizationTypeId))
      ..add(DiagnosticsProperty('teamSizeId', teamSizeId))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('banner', banner))
      ..add(DiagnosticsProperty('establishmentDate', establishmentDate))
      ..add(DiagnosticsProperty('website', website))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('profileCompletion', profileCompletion))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('vision', vision))
      ..add(DiagnosticsProperty('totalViews', totalViews))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('exactLocation', exactLocation))
      ..add(DiagnosticsProperty('neighborhood', neighborhood))
      ..add(DiagnosticsProperty('locality', locality))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('district', district))
      ..add(DiagnosticsProperty('postcode', postcode))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('long', long))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('isProfileVerified', isProfileVerified))
      ..add(DiagnosticsProperty('documentVerifiedAt', documentVerifiedAt))
      ..add(DiagnosticsProperty('questionFeatureEnable', questionFeatureEnable))
      ..add(DiagnosticsProperty('logoUrl', logoUrl))
      ..add(DiagnosticsProperty('bannerUrl', bannerUrl))
      ..add(DiagnosticsProperty('fullAddress', fullAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.industryTypeId, industryTypeId) ||
                other.industryTypeId == industryTypeId) &&
            (identical(other.organizationTypeId, organizationTypeId) ||
                other.organizationTypeId == organizationTypeId) &&
            (identical(other.teamSizeId, teamSizeId) ||
                other.teamSizeId == teamSizeId) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.establishmentDate, establishmentDate) ||
                other.establishmentDate == establishmentDate) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.profileCompletion, profileCompletion) ||
                other.profileCompletion == profileCompletion) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.vision, vision) || other.vision == vision) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.exactLocation, exactLocation) ||
                other.exactLocation == exactLocation) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.isProfileVerified, isProfileVerified) ||
                other.isProfileVerified == isProfileVerified) &&
            (identical(other.documentVerifiedAt, documentVerifiedAt) ||
                other.documentVerifiedAt == documentVerifiedAt) &&
            (identical(other.questionFeatureEnable, questionFeatureEnable) ||
                other.questionFeatureEnable == questionFeatureEnable) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        industryTypeId,
        organizationTypeId,
        teamSizeId,
        logo,
        banner,
        establishmentDate,
        website,
        visibility,
        profileCompletion,
        bio,
        vision,
        totalViews,
        createdAt,
        updatedAt,
        address,
        exactLocation,
        neighborhood,
        locality,
        place,
        district,
        postcode,
        region,
        country,
        long,
        lat,
        isProfileVerified,
        documentVerifiedAt,
        questionFeatureEnable,
        logoUrl,
        bannerUrl,
        fullAddress
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'industry_type_id') final int? industryTypeId,
      @JsonKey(name: 'organization_type_id') final int? organizationTypeId,
      @JsonKey(name: 'team_size_id') final int? teamSizeId,
      @JsonKey(name: 'logo') final String? logo,
      @JsonKey(name: 'banner') final String? banner,
      @JsonKey(name: 'establishment_date') final DateTime? establishmentDate,
      @JsonKey(name: 'website') final String? website,
      @JsonKey(name: 'visibility') final int? visibility,
      @JsonKey(name: 'profile_completion') final bool? profileCompletion,
      @JsonKey(name: 'bio') final String? bio,
      @JsonKey(name: 'vision') final String? vision,
      @JsonKey(name: 'total_views') final int? totalViews,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'exact_location') final String? exactLocation,
      @JsonKey(name: 'neighborhood') final String? neighborhood,
      @JsonKey(name: 'locality') final String? locality,
      @JsonKey(name: 'place') final String? place,
      @JsonKey(name: 'district') final String? district,
      @JsonKey(name: 'postcode') final int? postcode,
      @JsonKey(name: 'region') final String? region,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'long') final double? long,
      @JsonKey(name: 'lat') final double? lat,
      @JsonKey(name: 'is_profile_verified') final bool? isProfileVerified,
      @JsonKey(name: 'document_verified_at') final DateTime? documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable')
      final int? questionFeatureEnable,
      @JsonKey(name: 'logo_url') final String? logoUrl,
      @JsonKey(name: 'banner_url') final String? bannerUrl,
      @JsonKey(name: 'full_address')
      final String? fullAddress}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'industry_type_id')
  int? get industryTypeId;
  @override
  @JsonKey(name: 'organization_type_id')
  int? get organizationTypeId;
  @override
  @JsonKey(name: 'team_size_id')
  int? get teamSizeId;
  @override
  @JsonKey(name: 'logo')
  String? get logo;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'establishment_date')
  DateTime? get establishmentDate;
  @override
  @JsonKey(name: 'website')
  String? get website;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'profile_completion')
  bool? get profileCompletion;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'vision')
  String? get vision;
  @override
  @JsonKey(name: 'total_views')
  int? get totalViews;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'exact_location')
  String? get exactLocation;
  @override
  @JsonKey(name: 'neighborhood')
  String? get neighborhood;
  @override
  @JsonKey(name: 'locality')
  String? get locality;
  @override
  @JsonKey(name: 'place')
  String? get place;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'postcode')
  int? get postcode;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'long')
  double? get long;
  @override
  @JsonKey(name: 'lat')
  double? get lat;
  @override
  @JsonKey(name: 'is_profile_verified')
  bool? get isProfileVerified;
  @override
  @JsonKey(name: 'document_verified_at')
  DateTime? get documentVerifiedAt;
  @override
  @JsonKey(name: 'question_feature_enable')
  int? get questionFeatureEnable;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'banner_url')
  String? get bannerUrl;
  @override
  @JsonKey(name: 'full_address')
  String? get fullAddress;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
