// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDetailsResponseImpl _$$CompanyDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyDetailsResponseImpl(
      companyDetails: json['companyDetails'] == null
          ? null
          : CompanyDetails.fromJson(
              json['companyDetails'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : CompanyUser.fromJson(json['user'] as Map<String, dynamic>),
      openJobs: json['open_jobs'] == null
          ? null
          : PaginatedOpenPositionsData.fromJson(
              json['open_jobs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyDetailsResponseImplToJson(
        _$CompanyDetailsResponseImpl instance) =>
    <String, dynamic>{
      'companyDetails': instance.companyDetails,
      'user': instance.user,
      'open_jobs': instance.openJobs,
    };
