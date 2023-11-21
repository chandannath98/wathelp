// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  UserType? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  int? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'profession_id')
  int? get professionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_id')
  int? get experienceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_id')
  int? get educationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'website')
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'cv')
  String? get cv => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  String? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'cv_visibility')
  int? get cvVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_complete')
  int? get profileComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'neighborhood')
  String? get neighborhood => throw _privateConstructorUsedError;
  @JsonKey(name: 'locality')
  String? get locality => throw _privateConstructorUsedError;
  @JsonKey(name: 'place')
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcode')
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_plan')
  UserPlan? get userPlan => throw _privateConstructorUsedError;
  @JsonKey(name: 'social')
  List<Social>? get social => throw _privateConstructorUsedError;
  @JsonKey(name: 'contactinfo')
  ContactInfo? get contactInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'contactinfo') ContactInfo? contactInfo});

  $UserPlanCopyWith<$Res>? get userPlan;
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? roleId = freezed,
    Object? professionId = freezed,
    Object? experienceId = freezed,
    Object? educationId = freezed,
    Object? title = freezed,
    Object? gender = freezed,
    Object? website = freezed,
    Object? cv = freezed,
    Object? bio = freezed,
    Object? maritalStatus = freezed,
    Object? birthDate = freezed,
    Object? cvVisibility = freezed,
    Object? profileComplete = freezed,
    Object? address = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? photoUrl = freezed,
    Object? userPlan = freezed,
    Object? social = freezed,
    Object? contactInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      professionId: freezed == professionId
          ? _value.professionId
          : professionId // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceId: freezed == experienceId
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as int?,
      educationId: freezed == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      cv: freezed == cv
          ? _value.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvVisibility: freezed == cvVisibility
          ? _value.cvVisibility
          : cvVisibility // ignore: cast_nullable_to_non_nullable
              as int?,
      profileComplete: freezed == profileComplete
          ? _value.profileComplete
          : profileComplete // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userPlan: freezed == userPlan
          ? _value.userPlan
          : userPlan // ignore: cast_nullable_to_non_nullable
              as UserPlan?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as List<Social>?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPlanCopyWith<$Res>? get userPlan {
    if (_value.userPlan == null) {
      return null;
    }

    return $UserPlanCopyWith<$Res>(_value.userPlan!, (value) {
      return _then(_value.copyWith(userPlan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res>? get contactInfo {
    if (_value.contactInfo == null) {
      return null;
    }

    return $ContactInfoCopyWith<$Res>(_value.contactInfo!, (value) {
      return _then(_value.copyWith(contactInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'contactinfo') ContactInfo? contactInfo});

  @override
  $UserPlanCopyWith<$Res>? get userPlan;
  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? roleId = freezed,
    Object? professionId = freezed,
    Object? experienceId = freezed,
    Object? educationId = freezed,
    Object? title = freezed,
    Object? gender = freezed,
    Object? website = freezed,
    Object? cv = freezed,
    Object? bio = freezed,
    Object? maritalStatus = freezed,
    Object? birthDate = freezed,
    Object? cvVisibility = freezed,
    Object? profileComplete = freezed,
    Object? address = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? photoUrl = freezed,
    Object? userPlan = freezed,
    Object? social = freezed,
    Object? contactInfo = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      professionId: freezed == professionId
          ? _value.professionId
          : professionId // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceId: freezed == experienceId
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as int?,
      educationId: freezed == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      cv: freezed == cv
          ? _value.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvVisibility: freezed == cvVisibility
          ? _value.cvVisibility
          : cvVisibility // ignore: cast_nullable_to_non_nullable
              as int?,
      profileComplete: freezed == profileComplete
          ? _value.profileComplete
          : profileComplete // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userPlan: freezed == userPlan
          ? _value.userPlan
          : userPlan // ignore: cast_nullable_to_non_nullable
              as UserPlan?,
      social: freezed == social
          ? _value._social
          : social // ignore: cast_nullable_to_non_nullable
              as List<Social>?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'role_id') this.roleId,
      @JsonKey(name: 'profession_id') this.professionId,
      @JsonKey(name: 'experience_id') this.experienceId,
      @JsonKey(name: 'education_id') this.educationId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'website') this.website,
      @JsonKey(name: 'cv') this.cv,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'marital_status') this.maritalStatus,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'cv_visibility') this.cvVisibility,
      @JsonKey(name: 'profile_complete') this.profileComplete,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'neighborhood') this.neighborhood,
      @JsonKey(name: 'locality') this.locality,
      @JsonKey(name: 'place') this.place,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'postcode') this.postcode,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'user_plan') this.userPlan,
      @JsonKey(name: 'social') final List<Social>? social,
      @JsonKey(name: 'contactinfo') this.contactInfo})
      : _social = social;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'role')
  final UserType? role;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'role_id')
  final int? roleId;
  @override
  @JsonKey(name: 'profession_id')
  final int? professionId;
  @override
  @JsonKey(name: 'experience_id')
  final int? experienceId;
  @override
  @JsonKey(name: 'education_id')
  final int? educationId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'website')
  final String? website;
  @override
  @JsonKey(name: 'cv')
  final String? cv;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'marital_status')
  final String? maritalStatus;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'cv_visibility')
  final int? cvVisibility;
  @override
  @JsonKey(name: 'profile_complete')
  final int? profileComplete;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'neighborhood')
  final String? neighborhood;
  @override
  @JsonKey(name: 'locality')
  final String? locality;
  @override
  @JsonKey(name: 'place')
  final String? place;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'postcode')
  final String? postcode;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'user_plan')
  final UserPlan? userPlan;
  final List<Social>? _social;
  @override
  @JsonKey(name: 'social')
  List<Social>? get social {
    final value = _social;
    if (value == null) return null;
    if (_social is EqualUnmodifiableListView) return _social;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'contactinfo')
  final ContactInfo? contactInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, username: $username, email: $email, role: $role, name: $name, firstName: $firstName, lastName: $lastName, roleId: $roleId, professionId: $professionId, experienceId: $experienceId, educationId: $educationId, title: $title, gender: $gender, website: $website, cv: $cv, bio: $bio, maritalStatus: $maritalStatus, birthDate: $birthDate, cvVisibility: $cvVisibility, profileComplete: $profileComplete, address: $address, neighborhood: $neighborhood, locality: $locality, place: $place, district: $district, postcode: $postcode, region: $region, country: $country, photoUrl: $photoUrl, userPlan: $userPlan, social: $social, contactInfo: $contactInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('roleId', roleId))
      ..add(DiagnosticsProperty('professionId', professionId))
      ..add(DiagnosticsProperty('experienceId', experienceId))
      ..add(DiagnosticsProperty('educationId', educationId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('website', website))
      ..add(DiagnosticsProperty('cv', cv))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('maritalStatus', maritalStatus))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('cvVisibility', cvVisibility))
      ..add(DiagnosticsProperty('profileComplete', profileComplete))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('neighborhood', neighborhood))
      ..add(DiagnosticsProperty('locality', locality))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('district', district))
      ..add(DiagnosticsProperty('postcode', postcode))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('userPlan', userPlan))
      ..add(DiagnosticsProperty('social', social))
      ..add(DiagnosticsProperty('contactInfo', contactInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.professionId, professionId) ||
                other.professionId == professionId) &&
            (identical(other.experienceId, experienceId) ||
                other.experienceId == experienceId) &&
            (identical(other.educationId, educationId) ||
                other.educationId == educationId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.cv, cv) || other.cv == cv) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.cvVisibility, cvVisibility) ||
                other.cvVisibility == cvVisibility) &&
            (identical(other.profileComplete, profileComplete) ||
                other.profileComplete == profileComplete) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.userPlan, userPlan) ||
                other.userPlan == userPlan) &&
            const DeepCollectionEquality().equals(other._social, _social) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        email,
        role,
        name,
        firstName,
        lastName,
        roleId,
        professionId,
        experienceId,
        educationId,
        title,
        gender,
        website,
        cv,
        bio,
        maritalStatus,
        birthDate,
        cvVisibility,
        profileComplete,
        address,
        neighborhood,
        locality,
        place,
        district,
        postcode,
        region,
        country,
        photoUrl,
        userPlan,
        const DeepCollectionEquality().hash(_social),
        contactInfo
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'role') final UserType? role,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'role_id') final int? roleId,
          @JsonKey(name: 'profession_id') final int? professionId,
          @JsonKey(name: 'experience_id') final int? experienceId,
          @JsonKey(name: 'education_id') final int? educationId,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'gender') final String? gender,
          @JsonKey(name: 'website') final String? website,
          @JsonKey(name: 'cv') final String? cv,
          @JsonKey(name: 'bio') final String? bio,
          @JsonKey(name: 'marital_status') final String? maritalStatus,
          @JsonKey(name: 'birth_date') final String? birthDate,
          @JsonKey(name: 'cv_visibility') final int? cvVisibility,
          @JsonKey(name: 'profile_complete') final int? profileComplete,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'neighborhood') final String? neighborhood,
          @JsonKey(name: 'locality') final String? locality,
          @JsonKey(name: 'place') final String? place,
          @JsonKey(name: 'district') final String? district,
          @JsonKey(name: 'postcode') final String? postcode,
          @JsonKey(name: 'region') final String? region,
          @JsonKey(name: 'country') final String? country,
          @JsonKey(name: 'photo_url') final String? photoUrl,
          @JsonKey(name: 'user_plan') final UserPlan? userPlan,
          @JsonKey(name: 'social') final List<Social>? social,
          @JsonKey(name: 'contactinfo') final ContactInfo? contactInfo}) =
      _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'role')
  UserType? get role;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'role_id')
  int? get roleId;
  @override
  @JsonKey(name: 'profession_id')
  int? get professionId;
  @override
  @JsonKey(name: 'experience_id')
  int? get experienceId;
  @override
  @JsonKey(name: 'education_id')
  int? get educationId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'website')
  String? get website;
  @override
  @JsonKey(name: 'cv')
  String? get cv;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'marital_status')
  String? get maritalStatus;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'cv_visibility')
  int? get cvVisibility;
  @override
  @JsonKey(name: 'profile_complete')
  int? get profileComplete;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'neighborhood')
  String? get neighborhood;
  @override
  @JsonKey(name: 'locality')
  String? get locality;
  @override
  @JsonKey(name: 'place')
  String? get place;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'postcode')
  String? get postcode;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'user_plan')
  UserPlan? get userPlan;
  @override
  @JsonKey(name: 'social')
  List<Social>? get social;
  @override
  @JsonKey(name: 'contactinfo')
  ContactInfo? get contactInfo;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
