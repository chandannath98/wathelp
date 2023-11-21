import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';

import '../contact_info/contact_info.dart';
import '../social/social.dart';
import '../user_plan/user_plan.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') UserType? role,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'profession_id') int? professionId,
    @JsonKey(name: 'experience_id') int? experienceId,
    @JsonKey(name: 'education_id') int? educationId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'cv') String? cv,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'marital_status') String? maritalStatus,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'cv_visibility') int? cvVisibility,
    @JsonKey(name: 'profile_complete') int? profileComplete,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'neighborhood') String? neighborhood,
    @JsonKey(name: 'locality') String? locality,
    @JsonKey(name: 'place') String? place,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'postcode') String? postcode,
    @JsonKey(name: 'region') String? region,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'user_plan') UserPlan? userPlan,
    @JsonKey(name: 'social') List<Social>? social,
    @JsonKey(name: 'contactinfo') ContactInfo? contactInfo,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
