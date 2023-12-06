import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../company/company.dart';

part 'job_details.freezed.dart';
part 'job_details.g.dart';

@freezed
class JobDetails with _$JobDetails {
  const factory JobDetails({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'vacancies') String? vacancies,
    @JsonKey(name: 'salary') String? salary,
    @JsonKey(name: 'min_salary') int? minSalary,
    @JsonKey(name: 'max_salary') int? maxSalary,
    @JsonKey(name: 'salary_mode') String? salaryMode,
    @JsonKey(name: 'custom_salary') String? customSalary,
    @JsonKey(name: 'job_type') String? jobType,
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
    @JsonKey(name: 'bookmarked') bool? bookmarked,
    @JsonKey(name: 'applied') bool? applied,
    @JsonKey(name: 'days_remaining') String? daysRemaining,
    @JsonKey(name: 'deadline_active') bool? deadlineActive,
    @JsonKey(name: 'posted_at') String? postedAt,
    @JsonKey(name: 'can_apply') bool? canApply,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'benefits') List<String>? benefits,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'experience') String? experience,
    @JsonKey(name: 'education') String? education,
    @JsonKey(name: 'company') Company? company,
  }) = _JobDetails;

  const JobDetails._();
  DateTime? get postDate => DateTime.tryParse(postedAt ?? "");
  DateTime? get expireDate => DateTime.tryParse(deadline ?? "");

  factory JobDetails.fromJson(Map<String, Object?> json) =>
      _$JobDetailsFromJson(json);
}
