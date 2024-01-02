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
              : PersonalSettingData.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatePersonalSettingResponseImplToJson(
        _$UpdatePersonalSettingResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
