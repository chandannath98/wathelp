import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate_dashboard_data.freezed.dart';
part 'candidate_dashboard_data.g.dart';

@freezed
class CandidateDashboardData with _$CandidateDashboardData {
  const factory CandidateDashboardData({
    @JsonKey(name: 'profileComplated') int? profileComplete,
    @JsonKey(name: 'appliedJobs') int? appliedJobs,
    @JsonKey(name: 'favoriteJobs') int? favoriteJobs,
    @JsonKey(name: 'notifications') int? notifications,
  }) = _CandidateDashboardData;

  const CandidateDashboardData._();
  bool get isProfileCompleat => profileComplete == 1;

  factory CandidateDashboardData.fromJson(Map<String, Object?> json) =>
      _$CandidateDashboardDataFromJson(json);
}
