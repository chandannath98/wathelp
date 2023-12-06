// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      logo: json['logo'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      contactInfo: json['contact_info'] == null
          ? null
          : ContactInfo.fromJson(json['contact_info'] as Map<String, dynamic>),
      socialLinks: json['social_links'] == null
          ? null
          : Social.fromJson(json['social_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'website': instance.website,
      'address': instance.address,
      'contact_info': instance.contactInfo,
      'social_links': instance.socialLinks,
    };
