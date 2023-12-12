// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDetailsImpl _$$CompanyDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDetailsImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      industryTypeId: json['industry_type_id'] as int?,
      organizationTypeId: json['organization_type_id'] as int?,
      teamSizeId: json['team_size_id'] as int?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      establishmentDate: json['establishment_date'] as String?,
      website: json['website'] as String?,
      visibility: json['visibility'] as int?,
      profileCompletion: json['profile_completion'] as bool?,
      bio: json['bio'] as String?,
      vision: json['vision'] as String?,
      totalViews: json['total_views'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      address: json['address'] as String?,
      exactLocation: json['exact_location'] as String?,
      neighborhood: json['neighborhood'] as String?,
      locality: json['locality'] as String?,
      place: json['place'] as String?,
      district: json['district'] as String?,
      postcode: json['postcode'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      long: (json['long'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
      isProfileVerified: json['is_profile_verified'] as bool?,
      documentVerifiedAt: json['document_verified_at'] as String?,
      questionFeatureEnable: json['question_feature_enable'] as int?,
      activejobs: json['activejobs'] as int?,
      candidatemarked: json['candidatemarked'] as bool?,
      logoUrl: json['logo_url'] as String?,
      bannerUrl: json['banner_url'] as String?,
      fullAddress: json['full_address'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      industry: json['industry'] == null
          ? null
          : Industry.fromJson(json['industry'] as Map<String, dynamic>),
      teamSize: json['team_size'] == null
          ? null
          : TeamSize.fromJson(json['team_size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyDetailsImplToJson(
        _$CompanyDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'industry_type_id': instance.industryTypeId,
      'organization_type_id': instance.organizationTypeId,
      'team_size_id': instance.teamSizeId,
      'logo': instance.logo,
      'banner': instance.banner,
      'establishment_date': instance.establishmentDate,
      'website': instance.website,
      'visibility': instance.visibility,
      'profile_completion': instance.profileCompletion,
      'bio': instance.bio,
      'vision': instance.vision,
      'total_views': instance.totalViews,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'address': instance.address,
      'exact_location': instance.exactLocation,
      'neighborhood': instance.neighborhood,
      'locality': instance.locality,
      'place': instance.place,
      'district': instance.district,
      'postcode': instance.postcode,
      'region': instance.region,
      'country': instance.country,
      'long': instance.long,
      'lat': instance.lat,
      'is_profile_verified': instance.isProfileVerified,
      'document_verified_at': instance.documentVerifiedAt,
      'question_feature_enable': instance.questionFeatureEnable,
      'activejobs': instance.activejobs,
      'candidatemarked': instance.candidatemarked,
      'logo_url': instance.logoUrl,
      'banner_url': instance.bannerUrl,
      'full_address': instance.fullAddress,
      'organization': instance.organization,
      'industry': instance.industry,
      'team_size': instance.teamSize,
    };
