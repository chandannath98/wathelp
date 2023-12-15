import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  const factory Job({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'job_details') String? jobDetails,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'job_role') String? jobRole,
    @JsonKey(name: 'category') String? category,
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
  }) = _Job;

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}
