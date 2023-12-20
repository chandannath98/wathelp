// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeDataImpl _$$ResumeDataImplFromJson(Map<String, dynamic> json) =>
    _$ResumeDataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      file: json['file'] as String?,
      fileSize: json['file_size'] as String?,
    );

Map<String, dynamic> _$$ResumeDataImplToJson(_$ResumeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
      'file_size': instance.fileSize,
    };
