// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_personal_setting_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePersonalSettingResponseImpl
    _$$UpdatePersonalSettingResponseImplFromJson(Map<String, dynamic> json) =>
        _$UpdatePersonalSettingResponseImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatePersonalSettingResponseImplToJson(
        _$UpdatePersonalSettingResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      name: json['name'] as String?,
      title: json['title'] as String?,
      experienceId: json['experience_id'] as String?,
      educationId: json['education_id'] as String?,
      website: json['website'] as String?,
      birthDate: json['birth_date'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'experience_id': instance.experienceId,
      'education_id': instance.educationId,
      'website': instance.website,
      'birth_date': instance.birthDate,
    };
