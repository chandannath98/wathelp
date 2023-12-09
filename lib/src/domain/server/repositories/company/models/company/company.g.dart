// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      name: json['name'] as String?,
      username: json['username'] as String?,
      companyLogo: json['logo_url'] as String?,
      country: json['country'] as String?,
      openJobsCount: json['activejobs'] as int?,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'logo_url': instance.companyLogo,
      'country': instance.country,
      'activejobs': instance.openJobsCount,
    };
