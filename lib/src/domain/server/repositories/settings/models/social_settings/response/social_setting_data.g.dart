// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_setting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialSettingDataImpl _$$SocialSettingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialSettingDataImpl(
      socialMedia: (json['social_media'] as List<dynamic>?)
          ?.map((e) => SocialMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      socialMediaList:
          (json['social_media_list'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$SocialSettingDataImplToJson(
        _$SocialSettingDataImpl instance) =>
    <String, dynamic>{
      'social_media': instance.socialMedia,
      'social_media_list': instance.socialMediaList,
    };

_$SocialMediaImpl _$$SocialMediaImplFromJson(Map<String, dynamic> json) =>
    _$SocialMediaImpl(
      id: json['id'] as int?,
      socialMedia: json['social_media'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SocialMediaImplToJson(_$SocialMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'social_media': instance.socialMedia,
      'url': instance.url,
    };
