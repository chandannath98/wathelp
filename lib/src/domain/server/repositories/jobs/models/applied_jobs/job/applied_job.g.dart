// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppliedJobImpl _$$AppliedJobImplFromJson(Map<String, dynamic> json) =>
    _$AppliedJobImpl(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      jobDetails: json['job_details'] as String?,
      companyName: json['company_name'] as String?,
      companyLogo: json['company_logo'] as String?,
      jobType: json['job_type'] as String?,
      jobRole: json['job_role'] as String?,
      country: json['country'] as String?,
      deadline: json['deadline'] as String?,
      salary: json['salary'] as String?,
      salaryMode: json['salary_mode'] as String?,
      minSalary: json['min_salary'] as int?,
      maxSalary: json['max_salary'] as int?,
      isFeatured: json['is_featured'] as bool?,
      isHighlighted: json['is_highlighted'] as bool?,
      isRemote: json['is_remote'] as int?,
      status: $enumDecodeNullable(_$JobStatusEnumMap, json['status']),
      appliedHumanTime: json['applied_human_time'] as String?,
      appliedAt: json['applied_at'] as String?,
    );

Map<String, dynamic> _$$AppliedJobImplToJson(_$AppliedJobImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'job_details': instance.jobDetails,
      'company_name': instance.companyName,
      'company_logo': instance.companyLogo,
      'job_type': instance.jobType,
      'job_role': instance.jobRole,
      'country': instance.country,
      'deadline': instance.deadline,
      'salary': instance.salary,
      'salary_mode': instance.salaryMode,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'is_featured': instance.isFeatured,
      'is_highlighted': instance.isHighlighted,
      'is_remote': instance.isRemote,
      'status': _$JobStatusEnumMap[instance.status],
      'applied_human_time': instance.appliedHumanTime,
      'applied_at': instance.appliedAt,
    };

const _$JobStatusEnumMap = {
  JobStatus.active: 'active',
  JobStatus.expired: 'expired',
  JobStatus.pending: 'pending',
  JobStatus.unknown: null,
};
