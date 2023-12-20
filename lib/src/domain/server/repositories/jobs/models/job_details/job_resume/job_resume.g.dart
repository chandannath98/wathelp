// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobResumeImpl _$$JobResumeImplFromJson(Map<String, dynamic> json) =>
    _$JobResumeImpl(
      id: json['id'] as int?,
      candidateId: json['candidate_id'] as int?,
      name: json['name'] as String?,
      file: json['file'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      fileSize: json['file_size'] as String?,
      fileUrl: json['file_url'] as String?,
    );

Map<String, dynamic> _$$JobResumeImplToJson(_$JobResumeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'candidate_id': instance.candidateId,
      'name': instance.name,
      'file': instance.file,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'file_size': instance.fileSize,
      'file_url': instance.fileUrl,
    };
