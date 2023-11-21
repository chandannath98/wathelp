import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/candidate/candidate.dart';

import '../company/company.dart';

part 'register_data.freezed.dart';
part 'register_data.g.dart';

@Freezed(unionKey: 'role')
class RegisterData with _$RegisterData {
  const factory RegisterData.company({
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'company') Company? company,
  }) = CompanyData;

  const factory RegisterData.candidate({
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'candidate') Candidate? candidate,
  }) = CandidateData;

  factory RegisterData.fromJson(Map<String, Object?> json) =>
      _$RegisterDataFromJson(json);
}
