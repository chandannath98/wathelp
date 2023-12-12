// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactInfoImpl _$$ContactInfoImplFromJson(Map<String, dynamic> json) =>
    _$ContactInfoImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      phone: json['phone'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
      email: json['email'] as String?,
      secondaryEmail: json['secondary_email'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ContactInfoImplToJson(_$ContactInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'phone': instance.phone,
      'secondary_phone': instance.secondaryPhone,
      'email': instance.email,
      'secondary_email': instance.secondaryEmail,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
