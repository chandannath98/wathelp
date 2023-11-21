import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'candidate.freezed.dart';
part 'candidate.g.dart';

@freezed
class Candidate with _$Candidate {
  const factory Candidate({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'profession_id') int? professionId,
    @JsonKey(name: 'experience_id') int? experienceId,
    @JsonKey(name: 'education_id') int? educationId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'cv') String? cv,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'marital_status') String? maritalStatus,
    @JsonKey(name: 'birth_date') DateTime? birthDate,
    @JsonKey(name: 'visibility') int? visibility,
    @JsonKey(name: 'cv_visibility') int? cvVisibility,
    @JsonKey(name: 'received_job_alert') int? receivedJobAlert,
    @JsonKey(name: 'profile_complete') int? profileComplete,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'exact_location') String? exactLocation,
    @JsonKey(name: 'neighborhood') String? neighborhood,
    @JsonKey(name: 'locality') String? locality,
    @JsonKey(name: 'place') String? place,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'postcode') int? postcode,
    @JsonKey(name: 'region') String? region,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'long') double? long,
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'available_in') String? availableIn,
    @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
    @JsonKey(name: 'bookmark_candidates_count') int? bookmarkCandidatesCount,
    @JsonKey(name: 'full_address') String? fullAddress,
  }) = _Candidate;

  factory Candidate.fromJson(Map<String, Object?> json) =>
      _$CandidateFromJson(json);
}
