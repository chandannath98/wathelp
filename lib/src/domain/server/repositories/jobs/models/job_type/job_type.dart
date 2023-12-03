import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'job_type.freezed.dart';
part 'job_type.g.dart';

@freezed
class JobType with _$JobType {
  const factory JobType({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _JobType;

  factory JobType.fromJson(Map<String, Object?> json) =>
      _$JobTypeFromJson(json);
}
