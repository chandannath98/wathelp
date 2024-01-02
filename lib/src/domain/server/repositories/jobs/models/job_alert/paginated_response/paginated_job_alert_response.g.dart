// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_job_alert_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedJobAlertResponseImpl _$$PaginatedJobAlertResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedJobAlertResponseImpl(
      notifications: json['notifications'] == null
          ? null
          : PaginatedJobAlertData.fromJson(
              json['notifications'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PaginatedJobAlertResponseImplToJson(
        _$PaginatedJobAlertResponseImpl instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'message': instance.message,
    };

_$PaginatedJobAlertDataImpl _$$PaginatedJobAlertDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedJobAlertDataImpl(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AlertJob.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Links.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$PaginatedJobAlertDataImplToJson(
        _$PaginatedJobAlertDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };
