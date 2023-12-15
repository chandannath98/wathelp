import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'resume_data.freezed.dart';
part 'resume_data.g.dart';

@freezed
class ResumeData with _$ResumeData {
  const factory ResumeData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'file') String? file,
    @JsonKey(name: 'file_size') String? fileSize,
  }) = _ResumeData;

  factory ResumeData.fromJson(Map<String, Object?> json) =>
      _$ResumeDataFromJson(json);
}
