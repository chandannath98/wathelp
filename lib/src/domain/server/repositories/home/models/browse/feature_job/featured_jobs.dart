import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'featured_jobs.freezed.dart';
part 'featured_jobs.g.dart';

@freezed
class FeaturedJobs with _$FeaturedJobs {
  const factory FeaturedJobs({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'job_details') String? jobDetails,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'is_featured') bool? isFeatured,
    @JsonKey(name: 'is_highlighted') bool? isHighlighted,
    @JsonKey(name: 'salary') String? salary,
    @JsonKey(name: 'salary_mode') String? salaryMode,
    @JsonKey(name: 'min_salary') int? minSalary,
    @JsonKey(name: 'max_salary') int? maxSalary,
    @JsonKey(name: 'bookmarked') bool? bookmarked,
  }) = _FeaturedJobs;

  factory FeaturedJobs.fromJson(Map<String, Object?> json) =>
      _$FeaturedJobsFromJson(json);
}
