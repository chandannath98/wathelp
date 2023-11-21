// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactInfo {
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'email') String? email,
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
    Object? email = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'email') String? email,
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
    Object? email = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'email') this.email,
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
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'secondary_email')
  final String? secondaryEmail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactInfo(phone: $phone, secondaryPhone: $secondaryPhone, email: $email, secondaryEmail: $secondaryEmail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactInfo'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('secondaryPhone', secondaryPhone))
      ..add(DiagnosticsProperty('email', email))
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
            (identical(other.email, email) || other.email == email) &&
            (identical(other.secondaryEmail, secondaryEmail) ||
                other.secondaryEmail == secondaryEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, secondaryPhone, email, secondaryEmail);

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
          @JsonKey(name: 'email') final String? email,
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
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'secondary_email')
  String? get secondaryEmail;
  @override
  @JsonKey(ignore: true)
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
