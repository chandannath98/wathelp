import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../job_details/job_details.dart';
import '../related_jobs/related_job.dart';

part 'job_detail_response.freezed.dart';
part 'job_detail_response.g.dart';

@freezed
class JobDetailResponse with _$JobDetailResponse {
  const factory JobDetailResponse({
    @JsonKey(name: 'job') JobDetails? job,
    @JsonKey(name: 'resumes') List<String>? resumes,
    @JsonKey(name: 'related_jobs') List<RelatedJob>? relatedJobs,
  }) = _JobDetailResponse;

  factory JobDetailResponse.fromJson(Map<String, Object?> json) =>
      _$JobDetailResponseFromJson(json);
}
