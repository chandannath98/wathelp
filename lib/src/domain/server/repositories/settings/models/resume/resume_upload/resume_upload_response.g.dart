// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeUploadResponseImpl _$$ResumeUploadResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResumeUploadResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UploadResumeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResumeUploadResponseImplToJson(
        _$ResumeUploadResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$UploadResumeDataImpl _$$UploadResumeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadResumeDataImpl(
      name: json['name'] as String?,
      candidateId: json['candidate_id'] as int?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
      fileSize: json['file_size'] as String?,
      fileUrl: json['file_url'] as String?,
    );

Map<String, dynamic> _$$UploadResumeDataImplToJson(
        _$UploadResumeDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'candidate_id': instance.candidateId,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'file_size': instance.fileSize,
      'file_url': instance.fileUrl,
    };
