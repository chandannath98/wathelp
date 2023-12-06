import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'related_job.freezed.dart';
part 'related_job.g.dart';

@freezed
class RelatedJob with _$RelatedJob {
  const factory RelatedJob({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'job_details') String? jobDetails,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'job_role') int? jobRole,
    @JsonKey(name: 'category') int? category,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'is_featured') bool? isFeatured,
    @JsonKey(name: 'is_highlighted') bool? isHighlighted,
    @JsonKey(name: 'deadline') String? deadline,
    @JsonKey(name: 'salary') String? salary,
    @JsonKey(name: 'salary_mode') String? salaryMode,
    @JsonKey(name: 'min_salary') int? minSalary,
    @JsonKey(name: 'max_salary') int? maxSalary,
    @JsonKey(name: 'bookmarked') bool? bookmarked,
    @JsonKey(name: 'allAppliedJobs_count') int? allAppliedJobsCount,
  }) = _RelatedJob;

  factory RelatedJob.fromJson(Map<String, Object?> json) =>
      _$RelatedJobFromJson(json);
}
