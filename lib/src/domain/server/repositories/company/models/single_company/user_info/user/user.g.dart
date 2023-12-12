// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      imageUrl: json['image_url'] as String?,
      contactInfo: json['contact_info'] == null
          ? null
          : ContactInfo.fromJson(json['contact_info'] as Map<String, dynamic>),
      socialInfo: (json['social_info'] as List<dynamic>?)
          ?.map((e) => SocialInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'image_url': instance.imageUrl,
      'contact_info': instance.contactInfo,
      'social_info': instance.socialInfo,
    };
