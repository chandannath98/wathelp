// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchQueryImpl _$$SearchQueryImplFromJson(Map<String, dynamic> json) =>
    _$SearchQueryImpl(
      query: json['keyword'] as String?,
      category: json['category'] as int?,
      jobRole: json['job_role'] as int?,
      minPrice: json['price_min'] as int?,
      maxPrice: json['price_max'] as int?,
      tag: json['tag'] as String?,
      location: json['location'] as String?,
      experience: json['experience'] as int?,
      education: json['education'] as int?,
      isRemote: json['is_remote'] as int?,
      jobType: json['job_type'] as int?,
      sortBy: $enumDecodeNullable(_$JobSortByEnumMap, json['sort_by']),
    );

Map<String, dynamic> _$$SearchQueryImplToJson(_$SearchQueryImpl instance) =>
    <String, dynamic>{
      'keyword': instance.query,
      'category': instance.category,
      'job_role': instance.jobRole,
      'price_min': instance.minPrice,
      'price_max': instance.maxPrice,
      'tag': instance.tag,
      'location': instance.location,
      'experience': instance.experience,
      'education': instance.education,
      'is_remote': instance.isRemote,
      'job_type': instance.jobType,
      'sort_by': _$JobSortByEnumMap[instance.sortBy],
    };

const _$JobSortByEnumMap = {
  JobSortBy.featured: 'featured',
  JobSortBy.latest: 'latest',
};
