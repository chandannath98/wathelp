// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobDetailResponseImpl _$$JobDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$JobDetailResponseImpl(
      job: json['job'] == null
          ? null
          : JobDetails.fromJson(json['job'] as Map<String, dynamic>),
      resumes: (json['resumes'] as List<dynamic>?)
          ?.map((e) => JobResume.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedJobs: (json['related_jobs'] as List<dynamic>?)
          ?.map((e) => RelatedJob.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JobDetailResponseImplToJson(
        _$JobDetailResponseImpl instance) =>
    <String, dynamic>{
      'job': instance.job,
      'resumes': instance.resumes,
      'related_jobs': instance.relatedJobs,
    };
