// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPlanImpl _$$UserPlanImplFromJson(Map<String, dynamic> json) =>
    _$UserPlanImpl(
      id: json['id'] as int?,
      companyId: json['company_id'] as int?,
      planId: json['plan_id'] as int?,
      jobLimit: json['job_limit'] as int?,
      featuredJobLimit: json['featured_job_limit'] as int?,
      highlightJobLimit: json['highlight_job_limit'] as int?,
      candidateCvViewLimit: json['candidate_cv_view_limit'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      candidateCvViewLimitation:
          json['candidate_cv_view_limitation'] as String?,
    );

Map<String, dynamic> _$$UserPlanImplToJson(_$UserPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'plan_id': instance.planId,
      'job_limit': instance.jobLimit,
      'featured_job_limit': instance.featuredJobLimit,
      'highlight_job_limit': instance.highlightJobLimit,
      'candidate_cv_view_limit': instance.candidateCvViewLimit,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'candidate_cv_view_limitation': instance.candidateCvViewLimitation,
    };
