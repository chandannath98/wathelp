import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'states.freezed.dart';
part 'states.g.dart';

@freezed
class States with _$States {
  const factory States({
    @JsonKey(name: 'live_jobs') int? liveJobs,
    @JsonKey(name: 'new_jobs') int? newJobs,
    @JsonKey(name: 'companies') int? companies,
    @JsonKey(name: 'candidates') int? candidates,
  }) = _States;

  factory States.fromJson(Map<String, Object?> json) => _$StatesFromJson(json);
}
