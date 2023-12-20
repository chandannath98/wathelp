import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applied_job.freezed.dart';
part 'applied_job.g.dart';

enum JobStatus {
  @JsonValue("active")
  active,
  @JsonValue("expired")
  expired,
  @JsonValue("pending")
  pending,
  @JsonValue(null)
  unknown,
}

@freezed
class AppliedJob with _$AppliedJob {
  const factory AppliedJob({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'job_details') String? jobDetails,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'job_role') String? jobRole,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'deadline') String? deadline,
    @JsonKey(name: 'salary') String? salary,
    @JsonKey(name: 'salary_mode') String? salaryMode,
    @JsonKey(name: 'min_salary') int? minSalary,
    @JsonKey(name: 'max_salary') int? maxSalary,
    @JsonKey(name: 'is_featured') bool? isFeatured,
    @JsonKey(name: 'is_highlighted') bool? isHighlighted,
    @JsonKey(name: 'is_remote') int? isRemote,
    @JsonKey(name: 'status') JobStatus? status,
    @JsonKey(name: 'applied_human_time') String? appliedHumanTime,
    @JsonKey(name: 'applied_at') String? appliedAt,
  }) = _AppliedJob;

  factory AppliedJob.fromJson(Map<String, Object?> json) =>
      _$AppliedJobFromJson(json);
}
