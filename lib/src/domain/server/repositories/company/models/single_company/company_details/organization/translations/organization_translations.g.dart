// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_translations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationTranslationsImpl _$$OrganizationTranslationsImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationTranslationsImpl(
      id: json['id'] as int?,
      organizationTypeId: json['organization_type_id'] as int?,
      name: json['name'] as String?,
      locale: json['locale'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OrganizationTranslationsImplToJson(
        _$OrganizationTranslationsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_type_id': instance.organizationTypeId,
      'name': instance.name,
      'locale': instance.locale,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
