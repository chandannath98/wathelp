import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';

import 'industry/industry.dart';
import 'organization/organization.dart';
import 'team_size/team_size.dart';

part 'company_details.freezed.dart';
part 'company_details.g.dart';

@freezed
class CompanyDetails with _$CompanyDetails {
  const factory CompanyDetails({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'industry_type_id') int? industryTypeId,
    @JsonKey(name: 'organization_type_id') int? organizationTypeId,
    @JsonKey(name: 'team_size_id') int? teamSizeId,
    @JsonKey(name: 'logo') String? logo,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'establishment_date') String? establishmentDate,
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
    @JsonKey(name: 'postcode') String? postcode,
    @JsonKey(name: 'region') String? region,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'long') double? long,
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'is_profile_verified') bool? isProfileVerified,
    @JsonKey(name: 'document_verified_at') String? documentVerifiedAt,
    @JsonKey(name: 'question_feature_enable') int? questionFeatureEnable,
    @JsonKey(name: 'activejobs') int? activejobs,
    @JsonKey(name: 'candidatemarked') bool? candidatemarked,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'banner_url') String? bannerUrl,
    @JsonKey(name: 'full_address') String? fullAddress,
    @JsonKey(name: 'organization') Organization? organization,
    @JsonKey(name: 'industry') Industry? industry,
    @JsonKey(name: 'team_size') TeamSize? teamSize,
  }) = _CompanyDetails;

  factory CompanyDetails.fromJson(Map<String, Object?> json) =>
      _$CompanyDetailsFromJson(json);
}
