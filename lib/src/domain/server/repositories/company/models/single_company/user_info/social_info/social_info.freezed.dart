// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialInfo _$SocialInfoFromJson(Map<String, dynamic> json) {
  return _SocialInfo.fromJson(json);
}

/// @nodoc
mixin _$SocialInfo {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media')
  String? get socialMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialInfoCopyWith<SocialInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialInfoCopyWith<$Res> {
  factory $SocialInfoCopyWith(
          SocialInfo value, $Res Function(SocialInfo) then) =
      _$SocialInfoCopyWithImpl<$Res, SocialInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'social_media') String? socialMedia,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$SocialInfoCopyWithImpl<$Res, $Val extends SocialInfo>
    implements $SocialInfoCopyWith<$Res> {
  _$SocialInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? socialMedia = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      socialMedia: freezed == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$SocialInfoImplCopyWith<$Res>
    implements $SocialInfoCopyWith<$Res> {
  factory _$$SocialInfoImplCopyWith(
          _$SocialInfoImpl value, $Res Function(_$SocialInfoImpl) then) =
      __$$SocialInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'social_media') String? socialMedia,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$SocialInfoImplCopyWithImpl<$Res>
    extends _$SocialInfoCopyWithImpl<$Res, _$SocialInfoImpl>
    implements _$$SocialInfoImplCopyWith<$Res> {
  __$$SocialInfoImplCopyWithImpl(
      _$SocialInfoImpl _value, $Res Function(_$SocialInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? socialMedia = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SocialInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      socialMedia: freezed == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$SocialInfoImpl with DiagnosticableTreeMixin implements _SocialInfo {
  const _$SocialInfoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'social_media') this.socialMedia,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SocialInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'social_media')
  final String? socialMedia;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocialInfo(id: $id, userId: $userId, socialMedia: $socialMedia, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocialInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('socialMedia', socialMedia))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.socialMedia, socialMedia) ||
                other.socialMedia == socialMedia) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, socialMedia, url, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialInfoImplCopyWith<_$SocialInfoImpl> get copyWith =>
      __$$SocialInfoImplCopyWithImpl<_$SocialInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialInfoImplToJson(
      this,
    );
  }
}

abstract class _SocialInfo implements SocialInfo {
  const factory _SocialInfo(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'social_media') final String? socialMedia,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$SocialInfoImpl;

  factory _SocialInfo.fromJson(Map<String, dynamic> json) =
      _$SocialInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'social_media')
  String? get socialMedia;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SocialInfoImplCopyWith<_$SocialInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
