// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      roleId: json['role_id'] as int?,
      professionId: json['profession_id'] as int?,
      experienceId: json['experience_id'] as int?,
      educationId: json['education_id'] as int?,
      title: json['title'] as String?,
      gender: json['gender'] as String?,
      website: json['website'] as String?,
      cv: json['cv'] as String?,
      bio: json['bio'] as String?,
      maritalStatus: json['marital_status'] as String?,
      birthDate: json['birth_date'] as String?,
      cvVisibility: json['cv_visibility'] as int?,
      profileComplete: json['profile_complete'] as int?,
      address: json['address'] as String?,
      neighborhood: json['neighborhood'] as String?,
      locality: json['locality'] as String?,
      place: json['place'] as String?,
      district: json['district'] as String?,
      postcode: json['postcode'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      photoUrl: json['photo_url'] as String?,
      userPlan: json['user_plan'] == null
          ? null
          : UserPlan.fromJson(json['user_plan'] as Map<String, dynamic>),
      social: (json['social'] as List<dynamic>?)
          ?.map((e) => Social.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactInfo: json['contactinfo'] == null
          ? null
          : ContactInfo.fromJson(json['contactinfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'role': instance.role,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'role_id': instance.roleId,
      'profession_id': instance.professionId,
      'experience_id': instance.experienceId,
      'education_id': instance.educationId,
      'title': instance.title,
      'gender': instance.gender,
      'website': instance.website,
      'cv': instance.cv,
      'bio': instance.bio,
      'marital_status': instance.maritalStatus,
      'birth_date': instance.birthDate,
      'cv_visibility': instance.cvVisibility,
      'profile_complete': instance.profileComplete,
      'address': instance.address,
      'neighborhood': instance.neighborhood,
      'locality': instance.locality,
      'place': instance.place,
      'district': instance.district,
      'postcode': instance.postcode,
      'region': instance.region,
      'country': instance.country,
      'photo_url': instance.photoUrl,
      'user_plan': instance.userPlan,
      'social': instance.social,
      'contactinfo': instance.contactInfo,
    };
