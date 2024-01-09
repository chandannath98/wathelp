// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_contact_setting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateContactSettingDataImpl _$$CandidateContactSettingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CandidateContactSettingDataImpl(
      contactInfo: json['contact_info'] == null
          ? null
          : ContactInfo.fromJson(json['contact_info'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      jobAlerts: (json['job_alerts'] as List<dynamic>?)
          ?.map((e) => ProfileJobAlertData.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobAlertRoleList: (json['job_alert_role_list'] as List<dynamic>?)
          ?.map((e) => JobAlertRoleList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CandidateContactSettingDataImplToJson(
        _$CandidateContactSettingDataImpl instance) =>
    <String, dynamic>{
      'contact_info': instance.contactInfo,
      'location': instance.location,
      'job_alerts': instance.jobAlerts,
      'job_alert_role_list': instance.jobAlertRoleList,
    };

_$ContactInfoImpl _$$ContactInfoImplFromJson(Map<String, dynamic> json) =>
    _$ContactInfoImpl(
      phone: json['phone'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
      whatsappNo: json['whatsapp_no'] as String?,
      secondaryEmail: json['secondary_email'] as String?,
    );

Map<String, dynamic> _$$ContactInfoImplToJson(_$ContactInfoImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'secondary_phone': instance.secondaryPhone,
      'whatsapp_no': instance.whatsappNo,
      'secondary_email': instance.secondaryEmail,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$JobAlertRoleListImpl _$$JobAlertRoleListImplFromJson(
        Map<String, dynamic> json) =>
    _$JobAlertRoleListImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$JobAlertRoleListImplToJson(
        _$JobAlertRoleListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ProfileJobAlertDataImpl _$$ProfileJobAlertDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileJobAlertDataImpl(
      id: json['id'] as int?,
      candidateId: json['candidate_id'] as int?,
      jobRoleId: json['job_role_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ProfileJobAlertDataImplToJson(
        _$ProfileJobAlertDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'candidate_id': instance.candidateId,
      'job_role_id': instance.jobRoleId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
