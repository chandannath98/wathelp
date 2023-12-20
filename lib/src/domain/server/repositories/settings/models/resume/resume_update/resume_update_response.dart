import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_update_response.g.dart';
part 'resume_update_response.freezed.dart';

@freezed
class ResumeUpdateResponse with _$ResumeUpdateResponse {
  const factory ResumeUpdateResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') UpdateResumeData? data,
  }) = _ResumeUpdateResponse;

  factory ResumeUpdateResponse.fromJson(Map<String, Object?> json) =>
      _$ResumeUpdateResponseFromJson(json);
}

@freezed
class UpdateResumeData with _$UpdateResumeData {
  const factory UpdateResumeData({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'candidate_id') int? candidateId,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'file_size') String? fileSize,
    @JsonKey(name: 'file_url') String? fileUrl,
  }) = _UpdateResumeData;

  factory UpdateResumeData.fromJson(Map<String, Object?> json) =>
      _$UpdateResumeDataFromJson(json);
}
