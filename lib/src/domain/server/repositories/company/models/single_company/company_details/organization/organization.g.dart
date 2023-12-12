// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationImpl _$$OrganizationImplFromJson(Map<String, dynamic> json) =>
    _$OrganizationImpl(
      id: json['id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      name: json['name'] as String?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) =>
              OrganizationTranslations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrganizationImplToJson(_$OrganizationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'name': instance.name,
      'translations': instance.translations,
    };
