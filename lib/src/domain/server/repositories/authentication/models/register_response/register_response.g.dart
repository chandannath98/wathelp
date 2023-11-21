// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseImpl _$$RegisterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseImpl(
      data: json['data'] == null
          ? null
          : RegisterData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$RegisterResponseImplToJson(
        _$RegisterResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };
