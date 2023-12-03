// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      jobDetails: json['job_details'] as String?,
      companyName: json['company_name'] as String?,
      companyLogo: json['company_logo'] as String?,
      jobType: json['job_type'] as String?,
      jobRole: json['job_role'] as int?,
      category: json['category'] as int?,
      country: json['country'] as String?,
      isFeatured: json['is_featured'] as bool?,
      isHighlighted: json['is_highlighted'] as bool?,
      deadline: json['deadline'] as String?,
      salary: json['salary'] as String?,
      salaryMode: json['salary_mode'] as String?,
      minSalary: json['min_salary'] as int?,
      maxSalary: json['max_salary'] as int?,
      bookmarked: json['bookmarked'] as bool?,
      allAppliedJobsCount: json['allAppliedJobs_count'] as int?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'job_details': instance.jobDetails,
      'company_name': instance.companyName,
      'company_logo': instance.companyLogo,
      'job_type': instance.jobType,
      'job_role': instance.jobRole,
      'category': instance.category,
      'country': instance.country,
      'is_featured': instance.isFeatured,
      'is_highlighted': instance.isHighlighted,
      'deadline': instance.deadline,
      'salary': instance.salary,
      'salary_mode': instance.salaryMode,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'bookmarked': instance.bookmarked,
      'allAppliedJobs_count': instance.allAppliedJobsCount,
    };
