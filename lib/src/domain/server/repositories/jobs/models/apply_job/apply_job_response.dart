import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply_job_response.g.dart';
part 'apply_job_response.freezed.dart';

@freezed
class ApplyJobResponse with _$ApplyJobResponse {
  const factory ApplyJobResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'status') bool? status,
  }) = _ApplyJobResponse;

  factory ApplyJobResponse.fromJson(Map<String, Object?> json) =>
      _$ApplyJobResponseFromJson(json);
}
