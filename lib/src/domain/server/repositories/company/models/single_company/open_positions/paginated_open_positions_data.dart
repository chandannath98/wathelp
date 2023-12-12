import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_open_positions_data.freezed.dart';
part 'paginated_open_positions_data.g.dart';

@freezed
class PaginatedOpenPositionsData with _$PaginatedOpenPositionsData {
  const factory PaginatedOpenPositionsData({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<OpenJob>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    @JsonKey(name: 'to') int? to,
  }) = _PaginatedOpenPositionsData;

  factory PaginatedOpenPositionsData.fromJson(Map<String, Object?> json) =>
      _$PaginatedOpenPositionsDataFromJson(json);
}

@freezed
class OpenJob with _$OpenJob {
  const factory OpenJob({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'experience_id') int? experienceId,
    @JsonKey(name: 'education_id') int? educationId,
    @JsonKey(name: 'job_type_id') int? jobTypeId,
    @JsonKey(name: 'salary_type_id') int? salaryTypeId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'vacancies') String? vacancies,
    @JsonKey(name: 'min_salary') int? minSalary,
    @JsonKey(name: 'max_salary') int? maxSalary,
    @JsonKey(name: 'deadline') String? deadline,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'apply_on') String? applyOn,
    @JsonKey(name: 'apply_email') String? applyEmail,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'featured') bool? featured,
    @JsonKey(name: 'featured_until') String? featuredUntil,
    @JsonKey(name: 'highlight') bool? highlight,
    @JsonKey(name: 'highlight_until') String? highlightUntil,
    @JsonKey(name: 'is_remote') int? isRemote,
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
    @JsonKey(name: 'long') String? long,
    @JsonKey(name: 'lat') String? lat,
    @JsonKey(name: 'parent_job_id') String? parentJobId,
    @JsonKey(name: 'waiting_for_edit_approval') int? waitingForEditApproval,
    @JsonKey(name: 'salary_mode') String? salaryMode,
    @JsonKey(name: 'custom_salary') String? customSalary,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'days_remaining') String? daysRemaining,
    @JsonKey(name: 'deadline_active') bool? deadlineActive,
    @JsonKey(name: 'can_apply') bool? canApply,
    @JsonKey(name: 'full_address') String? fullAddress,
    @JsonKey(name: 'company') Company? company,
    @JsonKey(name: 'job_type') JobType? jobType,
  }) = _OpenJob;

  factory OpenJob.fromJson(Map<String, Object?> json) =>
      _$OpenJobFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
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
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'banner_url') String? bannerUrl,
    @JsonKey(name: 'full_address') String? fullAddress,
    @JsonKey(name: 'user') CompanyUser? user,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}

@freezed
class CompanyUser with _$CompanyUser {
  const factory CompanyUser({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'recent_activities_alert') int? recentActivitiesAlert,
    @JsonKey(name: 'job_expired_alert') int? jobExpiredAlert,
    @JsonKey(name: 'new_job_alert') int? newJobAlert,
    @JsonKey(name: 'shortlisted_alert') int? shortlistedAlert,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'is_demo_field') int? isDemoField,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'auth_type') String? authType,
    @JsonKey(name: 'google_id') String? googleId,
    @JsonKey(name: 'facebook_id') String? facebookId,
    @JsonKey(name: 'provider') String? provider,
    @JsonKey(name: 'provider_id') String? providerId,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _CompanyUser;

  factory CompanyUser.fromJson(Map<String, Object?> json) =>
      _$CompanyUserFromJson(json);
}

@freezed
class JobType with _$JobType {
  const factory JobType({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _JobType;

  factory JobType.fromJson(Map<String, Object?> json) =>
      _$JobTypeFromJson(json);
}
