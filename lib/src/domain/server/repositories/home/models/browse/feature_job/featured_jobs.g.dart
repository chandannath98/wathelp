// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedJobsImpl _$$FeaturedJobsImplFromJson(Map<String, dynamic> json) =>
    _$FeaturedJobsImpl(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      jobDetails: json['job_details'] as String?,
      companyName: json['company_name'] as String?,
      companyLogo: json['company_logo'] as String?,
      jobType: json['job_type'] as String?,
      country: json['country'] as String?,
      isFeatured: json['is_featured'] as bool?,
      isHighlighted: json['is_highlighted'] as bool?,
      salary: json['salary'] as String?,
      salaryMode: json['salary_mode'] as String?,
      minSalary: json['min_salary'] as int?,
      maxSalary: json['max_salary'] as int?,
      bookmarked: json['bookmarked'] as bool?,
    );

Map<String, dynamic> _$$FeaturedJobsImplToJson(_$FeaturedJobsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'job_details': instance.jobDetails,
      'company_name': instance.companyName,
      'company_logo': instance.companyLogo,
      'job_type': instance.jobType,
      'country': instance.country,
      'is_featured': instance.isFeatured,
      'is_highlighted': instance.isHighlighted,
      'salary': instance.salary,
      'salary_mode': instance.salaryMode,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'bookmarked': instance.bookmarked,
    };
