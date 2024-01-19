// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyUser _$CompanyUserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$CompanyUser {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_info')
  ContactInfo? get contactInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_info')
  List<SocialInfo>? get socialInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyUserCopyWith<CompanyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyUserCopyWith<$Res> {
  factory $CompanyUserCopyWith(
          CompanyUser value, $Res Function(CompanyUser) then) =
      _$CompanyUserCopyWithImpl<$Res, CompanyUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'contact_info') ContactInfo? contactInfo,
      @JsonKey(name: 'social_info') List<SocialInfo>? socialInfo});

  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class _$CompanyUserCopyWithImpl<$Res, $Val extends CompanyUser>
    implements $CompanyUserCopyWith<$Res> {
  _$CompanyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? imageUrl = freezed,
    Object? contactInfo = freezed,
    Object? socialInfo = freezed,
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
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      socialInfo: freezed == socialInfo
          ? _value.socialInfo
          : socialInfo // ignore: cast_nullable_to_non_nullable
              as List<SocialInfo>?,
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
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $CompanyUserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'contact_info') ContactInfo? contactInfo,
      @JsonKey(name: 'social_info') List<SocialInfo>? socialInfo});

  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$CompanyUserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? imageUrl = freezed,
    Object? contactInfo = freezed,
    Object? socialInfo = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      socialInfo: freezed == socialInfo
          ? _value._socialInfo
          : socialInfo // ignore: cast_nullable_to_non_nullable
              as List<SocialInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User with DiagnosticableTreeMixin {
  const _$UserImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'contact_info') this.contactInfo,
      @JsonKey(name: 'social_info') final List<SocialInfo>? socialInfo})
      : _socialInfo = socialInfo,
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'contact_info')
  final ContactInfo? contactInfo;
  final List<SocialInfo>? _socialInfo;
  @override
  @JsonKey(name: 'social_info')
  List<SocialInfo>? get socialInfo {
    final value = _socialInfo;
    if (value == null) return null;
    if (_socialInfo is EqualUnmodifiableListView) return _socialInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyUser(id: $id, name: $name, username: $username, imageUrl: $imageUrl, contactInfo: $contactInfo, socialInfo: $socialInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('contactInfo', contactInfo))
      ..add(DiagnosticsProperty('socialInfo', socialInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            const DeepCollectionEquality()
                .equals(other._socialInfo, _socialInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, imageUrl,
      contactInfo, const DeepCollectionEquality().hash(_socialInfo));

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

abstract class _User extends CompanyUser {
  const factory _User(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'contact_info') final ContactInfo? contactInfo,
          @JsonKey(name: 'social_info') final List<SocialInfo>? socialInfo}) =
      _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'contact_info')
  ContactInfo? get contactInfo;
  @override
  @JsonKey(name: 'social_info')
  List<SocialInfo>? get socialInfo;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
