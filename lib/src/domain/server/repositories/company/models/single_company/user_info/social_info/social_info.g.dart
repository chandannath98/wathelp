// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialInfoImpl _$$SocialInfoImplFromJson(Map<String, dynamic> json) =>
    _$SocialInfoImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      socialMedia: json['social_media'] as String?,
      url: json['url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SocialInfoImplToJson(_$SocialInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'social_media': instance.socialMedia,
      'url': instance.url,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
