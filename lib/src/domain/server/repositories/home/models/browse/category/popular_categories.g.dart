// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularCategoriesImpl _$$PopularCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularCategoriesImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      openJobsCount: json['open_jobs_count'] as int?,
    );

Map<String, dynamic> _$$PopularCategoriesImplToJson(
        _$PopularCategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'open_jobs_count': instance.openJobsCount,
    };
