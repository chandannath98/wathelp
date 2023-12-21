import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_delete_response.freezed.dart';
part 'resume_delete_response.g.dart';

@freezed
class ResumeDeleteResponse with _$ResumeDeleteResponse {
  const factory ResumeDeleteResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'status') bool? status,
  }) = _ResumeDeleteResponse;

  factory ResumeDeleteResponse.fromJson(Map<String, Object?> json) =>
      _$ResumeDeleteResponseFromJson(json);
}
