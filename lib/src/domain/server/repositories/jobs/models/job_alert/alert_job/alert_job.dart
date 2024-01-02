import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_job.g.dart';
part 'alert_job.freezed.dart';

@freezed
class AlertJob with _$AlertJob {
  const factory AlertJob({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'salary') String? salary,
    @JsonKey(name: 'deadline') String? deadline,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_logo') String? companyLogo,
  }) = _AlertJob;

  factory AlertJob.fromJson(Map<String, Object?> json) =>
      _$AlertJobFromJson(json);
}
