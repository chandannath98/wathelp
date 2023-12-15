// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularTagImpl _$$PopularTagImplFromJson(Map<String, dynamic> json) =>
    _$PopularTagImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      jobsCount: json['jobs_count'] as int?,
      tagsCount: json['tags_count'] as int?,
    );

Map<String, dynamic> _$$PopularTagImplToJson(_$PopularTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'jobs_count': instance.jobsCount,
      'tags_count': instance.tagsCount,
    };
