import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_upload_response.g.dart';
part 'resume_upload_response.freezed.dart';

@freezed
class ResumeUploadResponse with _$ResumeUploadResponse {
  const factory ResumeUploadResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') UploadResumeData? data,
  }) = _ResumeUploadResponse;

  factory ResumeUploadResponse.fromJson(Map<String, Object?> json) =>
      _$ResumeUploadResponseFromJson(json);
}

@freezed
class UploadResumeData with _$UploadResumeData {
  const factory UploadResumeData({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'candidate_id') int? candidateId,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'file_size') String? fileSize,
    @JsonKey(name: 'file_url') String? fileUrl,
  }) = _UploadResumeData;

  factory UploadResumeData.fromJson(Map<String, Object?> json) =>
      _$UploadResumeDataFromJson(json);
}
