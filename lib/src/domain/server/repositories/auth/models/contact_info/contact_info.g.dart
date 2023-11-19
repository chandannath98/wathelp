// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactInfoImpl _$$ContactInfoImplFromJson(Map<String, dynamic> json) =>
    _$ContactInfoImpl(
      phone: json['phone'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
      email: json['email'] as String?,
      secondaryEmail: json['secondary_email'] as String?,
    );

Map<String, dynamic> _$$ContactInfoImplToJson(_$ContactInfoImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'secondary_phone': instance.secondaryPhone,
      'email': instance.email,
      'secondary_email': instance.secondaryEmail,
    };
