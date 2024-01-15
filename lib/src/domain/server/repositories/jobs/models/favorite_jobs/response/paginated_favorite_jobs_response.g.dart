// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_favorite_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedFavoriteJobsResponseImpl
    _$$PaginatedFavoriteJobsResponseImplFromJson(Map<String, dynamic> json) =>
        _$PaginatedFavoriteJobsResponseImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => FavoriteJob.fromJson(e as Map<String, dynamic>))
              .toList(),
          links: json['links'] == null
              ? null
              : Links.fromJson(json['links'] as Map<String, dynamic>),
          meta: json['meta'] == null
              ? null
              : Meta.fromJson(json['meta'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PaginatedFavoriteJobsResponseImplToJson(
        _$PaginatedFavoriteJobsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };
