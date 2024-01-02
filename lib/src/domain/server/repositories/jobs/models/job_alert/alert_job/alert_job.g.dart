// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertJobImpl _$$AlertJobImplFromJson(Map<String, dynamic> json) =>
    _$AlertJobImpl(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      jobType: json['job_type'] as String?,
      salary: json['salary'] as String?,
      deadline: json['deadline'] as String?,
      country: json['country'] as String?,
      companyName: json['company_name'] as String?,
      companyLogo: json['company_logo'] as String?,
    );

Map<String, dynamic> _$$AlertJobImplToJson(_$AlertJobImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'job_type': instance.jobType,
      'salary': instance.salary,
      'deadline': instance.deadline,
      'country': instance.country,
      'company_name': instance.companyName,
      'company_logo': instance.companyLogo,
    };
