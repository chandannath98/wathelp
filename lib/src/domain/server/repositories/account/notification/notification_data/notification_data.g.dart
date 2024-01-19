// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      id: json['id'] as String?,
      type: json['type'] as String?,
      notifiableType: json['notifiable_type'] as String?,
      notifiableId: json['notifiable_id'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'notifiable_type': instance.notifiableType,
      'notifiable_id': instance.notifiableId,
      'data': instance.data,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      title: json['title'] as String?,
      url: json['url'] as String?,
      jobId: json['job_id'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'job_id': instance.jobId,
    };
