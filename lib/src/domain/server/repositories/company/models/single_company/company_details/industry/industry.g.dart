// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndustryImpl _$$IndustryImplFromJson(Map<String, dynamic> json) =>
    _$IndustryImpl(
      id: json['id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$IndustryImplToJson(_$IndustryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'name': instance.name,
    };
