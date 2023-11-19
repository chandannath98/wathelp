import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user_plan.freezed.dart';
part 'user_plan.g.dart';

@freezed
class UserPlan with _$UserPlan {
  const factory UserPlan({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'plan_id') int? planId,
    @JsonKey(name: 'job_limit') int? jobLimit,
    @JsonKey(name: 'featured_job_limit') int? featuredJobLimit,
    @JsonKey(name: 'highlight_job_limit') int? highlightJobLimit,
    @JsonKey(name: 'candidate_cv_view_limit') int? candidateCvViewLimit,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'candidate_cv_view_limitation')
    String? candidateCvViewLimitation,
  }) = _UserPlan;

  factory UserPlan.fromJson(Map<String, Object?> json) =>
      _$UserPlanFromJson(json);
}
