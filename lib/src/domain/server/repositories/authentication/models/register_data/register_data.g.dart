// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDataImpl _$$CompanyDataImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDataImpl(
      role: json['role'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
      imageUrl: json['image_url'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyDataImplToJson(_$CompanyDataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'company': instance.company,
    };

_$CandidateDataImpl _$$CandidateDataImplFromJson(Map<String, dynamic> json) =>
    _$CandidateDataImpl(
      role: json['role'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
      imageUrl: json['image_url'] as String?,
      candidate: json['candidate'] == null
          ? null
          : Candidate.fromJson(json['candidate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CandidateDataImplToJson(_$CandidateDataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'candidate': instance.candidate,
    };
