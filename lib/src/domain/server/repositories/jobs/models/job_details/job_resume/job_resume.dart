import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_resume.freezed.dart';
part 'job_resume.g.dart';

@freezed
class JobResume with _$JobResume {
  const factory JobResume({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'candidate_id') int? candidateId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'file') String? file,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'file_size') String? fileSize,
    @JsonKey(name: 'file_url') String? fileUrl,
  }) = _JobResume;

  factory JobResume.fromJson(Map<String, Object?> json) =>
      _$JobResumeFromJson(json);
}
