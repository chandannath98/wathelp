// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopCompaniesImpl _$$TopCompaniesImplFromJson(Map<String, dynamic> json) =>
    _$TopCompaniesImpl(
      name: json['name'] as String?,
      username: json['username'] as String?,
      companyLogo: json['company_logo'] as String?,
      country: json['country'] as String?,
      openJobsCount: json['open_jobs_count'] as int?,
    );

Map<String, dynamic> _$$TopCompaniesImplToJson(_$TopCompaniesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'company_logo': instance.companyLogo,
      'country': instance.country,
      'open_jobs_count': instance.openJobsCount,
    };
