// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate_contact_setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandidateContactSettingData _$CandidateContactSettingDataFromJson(
    Map<String, dynamic> json) {
  return _CandidateContactSettingData.fromJson(json);
}

/// @nodoc
mixin _$CandidateContactSettingData {
  @JsonKey(name: 'contact_info')
  ContactInfo? get contactInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_alerts')
  List<ProfileJobAlertData>? get jobAlerts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'job_alert_role_list')
  List<JobAlertRoleList>? get jobAlertRoleList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateContactSettingDataCopyWith<CandidateContactSettingData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateContactSettingDataCopyWith<$Res> {
  factory $CandidateContactSettingDataCopyWith(
          CandidateContactSettingData value,
          $Res Function(CandidateContactSettingData) then) =
      _$CandidateContactSettingDataCopyWithImpl<$Res,
          CandidateContactSettingData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contact_info') ContactInfo? contactInfo,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'job_alerts') List<ProfileJobAlertData>? jobAlerts,
      @JsonKey(name: 'job_alert_role_list')
      List<JobAlertRoleList>? jobAlertRoleList});

  $ContactInfoCopyWith<$Res>? get contactInfo;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$CandidateContactSettingDataCopyWithImpl<$Res,
        $Val extends CandidateContactSettingData>
    implements $CandidateContactSettingDataCopyWith<$Res> {
  _$CandidateContactSettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactInfo = freezed,
    Object? location = freezed,
    Object? jobAlerts = freezed,
    Object? jobAlertRoleList = freezed,
  }) {
    return _then(_value.copyWith(
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      jobAlerts: freezed == jobAlerts
          ? _value.jobAlerts
          : jobAlerts // ignore: cast_nullable_to_non_nullable
              as List<ProfileJobAlertData>?,
      jobAlertRoleList: freezed == jobAlertRoleList
          ? _value.jobAlertRoleList
          : jobAlertRoleList // ignore: cast_nullable_to_non_nullable
              as List<JobAlertRoleList>?,
    ) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CandidateContactSettingDataImplCopyWith<$Res>
    implements $CandidateContactSettingDataCopyWith<$Res> {
  factory _$$CandidateContactSettingDataImplCopyWith(
          _$CandidateContactSettingDataImpl value,
          $Res Function(_$CandidateContactSettingDataImpl) then) =
      __$$CandidateContactSettingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contact_info') ContactInfo? contactInfo,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'job_alerts') List<ProfileJobAlertData>? jobAlerts,
      @JsonKey(name: 'job_alert_role_list')
      List<JobAlertRoleList>? jobAlertRoleList});

  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CandidateContactSettingDataImplCopyWithImpl<$Res>
    extends _$CandidateContactSettingDataCopyWithImpl<$Res,
        _$CandidateContactSettingDataImpl>
    implements _$$CandidateContactSettingDataImplCopyWith<$Res> {
  __$$CandidateContactSettingDataImplCopyWithImpl(
      _$CandidateContactSettingDataImpl _value,
      $Res Function(_$CandidateContactSettingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactInfo = freezed,
    Object? location = freezed,
    Object? jobAlerts = freezed,
    Object? jobAlertRoleList = freezed,
  }) {
    return _then(_$CandidateContactSettingDataImpl(
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      jobAlerts: freezed == jobAlerts
          ? _value._jobAlerts
          : jobAlerts // ignore: cast_nullable_to_non_nullable
              as List<ProfileJobAlertData>?,
      jobAlertRoleList: freezed == jobAlertRoleList
          ? _value._jobAlertRoleList
          : jobAlertRoleList // ignore: cast_nullable_to_non_nullable
              as List<JobAlertRoleList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidateContactSettingDataImpl
    with DiagnosticableTreeMixin
    implements _CandidateContactSettingData {
  const _$CandidateContactSettingDataImpl(
      {@JsonKey(name: 'contact_info') this.contactInfo,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'job_alerts') final List<ProfileJobAlertData>? jobAlerts,
      @JsonKey(name: 'job_alert_role_list')
      final List<JobAlertRoleList>? jobAlertRoleList})
      : _jobAlerts = jobAlerts,
        _jobAlertRoleList = jobAlertRoleList;

  factory _$CandidateContactSettingDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CandidateContactSettingDataImplFromJson(json);

  @override
  @JsonKey(name: 'contact_info')
  final ContactInfo? contactInfo;
  @override
  @JsonKey(name: 'location')
  final Location? location;
  final List<ProfileJobAlertData>? _jobAlerts;
  @override
  @JsonKey(name: 'job_alerts')
  List<ProfileJobAlertData>? get jobAlerts {
    final value = _jobAlerts;
    if (value == null) return null;
    if (_jobAlerts is EqualUnmodifiableListView) return _jobAlerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<JobAlertRoleList>? _jobAlertRoleList;
  @override
  @JsonKey(name: 'job_alert_role_list')
  List<JobAlertRoleList>? get jobAlertRoleList {
    final value = _jobAlertRoleList;
    if (value == null) return null;
    if (_jobAlertRoleList is EqualUnmodifiableListView)
      return _jobAlertRoleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CandidateContactSettingData(contactInfo: $contactInfo, location: $location, jobAlerts: $jobAlerts, jobAlertRoleList: $jobAlertRoleList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CandidateContactSettingData'))
      ..add(DiagnosticsProperty('contactInfo', contactInfo))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('jobAlerts', jobAlerts))
      ..add(DiagnosticsProperty('jobAlertRoleList', jobAlertRoleList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandidateContactSettingDataImpl &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._jobAlerts, _jobAlerts) &&
            const DeepCollectionEquality()
                .equals(other._jobAlertRoleList, _jobAlertRoleList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contactInfo,
      location,
      const DeepCollectionEquality().hash(_jobAlerts),
      const DeepCollectionEquality().hash(_jobAlertRoleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CandidateContactSettingDataImplCopyWith<_$CandidateContactSettingDataImpl>
      get copyWith => __$$CandidateContactSettingDataImplCopyWithImpl<
          _$CandidateContactSettingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandidateContactSettingDataImplToJson(
      this,
    );
  }
}

abstract class _CandidateContactSettingData
    implements CandidateContactSettingData {
  const factory _CandidateContactSettingData(
      {@JsonKey(name: 'contact_info') final ContactInfo? contactInfo,
      @JsonKey(name: 'location') final Location? location,
      @JsonKey(name: 'job_alerts') final List<ProfileJobAlertData>? jobAlerts,
      @JsonKey(name: 'job_alert_role_list')
      final List<JobAlertRoleList>?
          jobAlertRoleList}) = _$CandidateContactSettingDataImpl;

  factory _CandidateContactSettingData.fromJson(Map<String, dynamic> json) =
      _$CandidateContactSettingDataImpl.fromJson;

  @override
  @JsonKey(name: 'contact_info')
  ContactInfo? get contactInfo;
  @override
  @JsonKey(name: 'location')
  Location? get location;
  @override
  @JsonKey(name: 'job_alerts')
  List<ProfileJobAlertData>? get jobAlerts;
  @override
  @JsonKey(name: 'job_alert_role_list')
  List<JobAlertRoleList>? get jobAlertRoleList;
  @override
  @JsonKey(ignore: true)
  _$$CandidateContactSettingDataImplCopyWith<_$CandidateContactSettingDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactInfo {
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_no')
  String? get whatsappNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_email')
  String? get secondaryEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res, ContactInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'secondary_phone') String? secondaryPhone,
      @JsonKey(name: 'whatsapp_no') String? whatsappNo,
      @JsonKey(name: 'secondary_email') String? secondaryEmail});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res, $Val extends ContactInfo>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? secondaryPhone = freezed,
    Object? whatsappNo = freezed,
    Object? secondaryEmail = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNo: freezed == whatsappNo
          ? _value.whatsappNo
          : whatsappNo // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryEmail: freezed == secondaryEmail
          ? _value.secondaryEmail
          : secondaryEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactInfoImplCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$$ContactInfoImplCopyWith(
          _$ContactInfoImpl value, $Res Function(_$ContactInfoImpl) then) =
      __$$ContactInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'secondary_phone') String? secondaryPhone,
      @JsonKey(name: 'whatsapp_no') String? whatsappNo,
      @JsonKey(name: 'secondary_email') String? secondaryEmail});
}

/// @nodoc
class __$$ContactInfoImplCopyWithImpl<$Res>
    extends _$ContactInfoCopyWithImpl<$Res, _$ContactInfoImpl>
    implements _$$ContactInfoImplCopyWith<$Res> {
  __$$ContactInfoImplCopyWithImpl(
      _$ContactInfoImpl _value, $Res Function(_$ContactInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? secondaryPhone = freezed,
    Object? whatsappNo = freezed,
    Object? secondaryEmail = freezed,
  }) {
    return _then(_$ContactInfoImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNo: freezed == whatsappNo
          ? _value.whatsappNo
          : whatsappNo // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryEmail: freezed == secondaryEmail
          ? _value.secondaryEmail
          : secondaryEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactInfoImpl with DiagnosticableTreeMixin implements _ContactInfo {
  const _$ContactInfoImpl(
      {@JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'secondary_phone') this.secondaryPhone,
      @JsonKey(name: 'whatsapp_no') this.whatsappNo,
      @JsonKey(name: 'secondary_email') this.secondaryEmail});

  factory _$ContactInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactInfoImplFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'secondary_phone')
  final String? secondaryPhone;
  @override
  @JsonKey(name: 'whatsapp_no')
  final String? whatsappNo;
  @override
  @JsonKey(name: 'secondary_email')
  final String? secondaryEmail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactInfo(phone: $phone, secondaryPhone: $secondaryPhone, whatsappNo: $whatsappNo, secondaryEmail: $secondaryEmail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactInfo'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('secondaryPhone', secondaryPhone))
      ..add(DiagnosticsProperty('whatsappNo', whatsappNo))
      ..add(DiagnosticsProperty('secondaryEmail', secondaryEmail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactInfoImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.secondaryPhone, secondaryPhone) ||
                other.secondaryPhone == secondaryPhone) &&
            (identical(other.whatsappNo, whatsappNo) ||
                other.whatsappNo == whatsappNo) &&
            (identical(other.secondaryEmail, secondaryEmail) ||
                other.secondaryEmail == secondaryEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, phone, secondaryPhone, whatsappNo, secondaryEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      __$$ContactInfoImplCopyWithImpl<_$ContactInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactInfoImplToJson(
      this,
    );
  }
}

abstract class _ContactInfo implements ContactInfo {
  const factory _ContactInfo(
          {@JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'secondary_phone') final String? secondaryPhone,
          @JsonKey(name: 'whatsapp_no') final String? whatsappNo,
          @JsonKey(name: 'secondary_email') final String? secondaryEmail}) =
      _$ContactInfoImpl;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$ContactInfoImpl.fromJson;

  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone;
  @override
  @JsonKey(name: 'whatsapp_no')
  String? get whatsappNo;
  @override
  @JsonKey(name: 'secondary_email')
  String? get secondaryEmail;
  @override
  @JsonKey(ignore: true)
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String? country,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String? country,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl with DiagnosticableTreeMixin implements _Location {
  const _$LocationImpl(
      {@JsonKey(name: 'country') this.country,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Location(country: $country, city: $city, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Location'))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, country, city, address, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'city') final String? city,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'latitude') final double? latitude,
      @JsonKey(name: 'longitude') final double? longitude}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobAlertRoleList _$JobAlertRoleListFromJson(Map<String, dynamic> json) {
  return _JobAlertRoleList.fromJson(json);
}

/// @nodoc
mixin _$JobAlertRoleList {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobAlertRoleListCopyWith<JobAlertRoleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobAlertRoleListCopyWith<$Res> {
  factory $JobAlertRoleListCopyWith(
          JobAlertRoleList value, $Res Function(JobAlertRoleList) then) =
      _$JobAlertRoleListCopyWithImpl<$Res, JobAlertRoleList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$JobAlertRoleListCopyWithImpl<$Res, $Val extends JobAlertRoleList>
    implements $JobAlertRoleListCopyWith<$Res> {
  _$JobAlertRoleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobAlertRoleListImplCopyWith<$Res>
    implements $JobAlertRoleListCopyWith<$Res> {
  factory _$$JobAlertRoleListImplCopyWith(_$JobAlertRoleListImpl value,
          $Res Function(_$JobAlertRoleListImpl) then) =
      __$$JobAlertRoleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$JobAlertRoleListImplCopyWithImpl<$Res>
    extends _$JobAlertRoleListCopyWithImpl<$Res, _$JobAlertRoleListImpl>
    implements _$$JobAlertRoleListImplCopyWith<$Res> {
  __$$JobAlertRoleListImplCopyWithImpl(_$JobAlertRoleListImpl _value,
      $Res Function(_$JobAlertRoleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$JobAlertRoleListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobAlertRoleListImpl
    with DiagnosticableTreeMixin
    implements _JobAlertRoleList {
  const _$JobAlertRoleListImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$JobAlertRoleListImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobAlertRoleListImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobAlertRoleList(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobAlertRoleList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobAlertRoleListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobAlertRoleListImplCopyWith<_$JobAlertRoleListImpl> get copyWith =>
      __$$JobAlertRoleListImplCopyWithImpl<_$JobAlertRoleListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobAlertRoleListImplToJson(
      this,
    );
  }
}

abstract class _JobAlertRoleList implements JobAlertRoleList {
  const factory _JobAlertRoleList(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$JobAlertRoleListImpl;

  factory _JobAlertRoleList.fromJson(Map<String, dynamic> json) =
      _$JobAlertRoleListImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$JobAlertRoleListImplCopyWith<_$JobAlertRoleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileJobAlertData _$ProfileJobAlertDataFromJson(Map<String, dynamic> json) {
  return _ProfileJobAlertData.fromJson(json);
}

/// @nodoc
mixin _$ProfileJobAlertData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'candidate_id')
  int? get candidateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_role_id')
  int? get jobRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileJobAlertDataCopyWith<ProfileJobAlertData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileJobAlertDataCopyWith<$Res> {
  factory $ProfileJobAlertDataCopyWith(
          ProfileJobAlertData value, $Res Function(ProfileJobAlertData) then) =
      _$ProfileJobAlertDataCopyWithImpl<$Res, ProfileJobAlertData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'candidate_id') int? candidateId,
      @JsonKey(name: 'job_role_id') int? jobRoleId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$ProfileJobAlertDataCopyWithImpl<$Res, $Val extends ProfileJobAlertData>
    implements $ProfileJobAlertDataCopyWith<$Res> {
  _$ProfileJobAlertDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? candidateId = freezed,
    Object? jobRoleId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      candidateId: freezed == candidateId
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobRoleId: freezed == jobRoleId
          ? _value.jobRoleId
          : jobRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileJobAlertDataImplCopyWith<$Res>
    implements $ProfileJobAlertDataCopyWith<$Res> {
  factory _$$ProfileJobAlertDataImplCopyWith(_$ProfileJobAlertDataImpl value,
          $Res Function(_$ProfileJobAlertDataImpl) then) =
      __$$ProfileJobAlertDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'candidate_id') int? candidateId,
      @JsonKey(name: 'job_role_id') int? jobRoleId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$ProfileJobAlertDataImplCopyWithImpl<$Res>
    extends _$ProfileJobAlertDataCopyWithImpl<$Res, _$ProfileJobAlertDataImpl>
    implements _$$ProfileJobAlertDataImplCopyWith<$Res> {
  __$$ProfileJobAlertDataImplCopyWithImpl(_$ProfileJobAlertDataImpl _value,
      $Res Function(_$ProfileJobAlertDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? candidateId = freezed,
    Object? jobRoleId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProfileJobAlertDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      candidateId: freezed == candidateId
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobRoleId: freezed == jobRoleId
          ? _value.jobRoleId
          : jobRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileJobAlertDataImpl
    with DiagnosticableTreeMixin
    implements _ProfileJobAlertData {
  const _$ProfileJobAlertDataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'candidate_id') this.candidateId,
      @JsonKey(name: 'job_role_id') this.jobRoleId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ProfileJobAlertDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileJobAlertDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'candidate_id')
  final int? candidateId;
  @override
  @JsonKey(name: 'job_role_id')
  final int? jobRoleId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileJobAlertData(id: $id, candidateId: $candidateId, jobRoleId: $jobRoleId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileJobAlertData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('candidateId', candidateId))
      ..add(DiagnosticsProperty('jobRoleId', jobRoleId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileJobAlertDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.candidateId, candidateId) ||
                other.candidateId == candidateId) &&
            (identical(other.jobRoleId, jobRoleId) ||
                other.jobRoleId == jobRoleId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, candidateId, jobRoleId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileJobAlertDataImplCopyWith<_$ProfileJobAlertDataImpl> get copyWith =>
      __$$ProfileJobAlertDataImplCopyWithImpl<_$ProfileJobAlertDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileJobAlertDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileJobAlertData implements ProfileJobAlertData {
  const factory _ProfileJobAlertData(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'candidate_id') final int? candidateId,
          @JsonKey(name: 'job_role_id') final int? jobRoleId,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$ProfileJobAlertDataImpl;

  factory _ProfileJobAlertData.fromJson(Map<String, dynamic> json) =
      _$ProfileJobAlertDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'candidate_id')
  int? get candidateId;
  @override
  @JsonKey(name: 'job_role_id')
  int? get jobRoleId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProfileJobAlertDataImplCopyWith<_$ProfileJobAlertDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
