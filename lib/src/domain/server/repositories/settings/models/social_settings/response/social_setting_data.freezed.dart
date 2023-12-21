// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialSettingData _$SocialSettingDataFromJson(Map<String, dynamic> json) {
  return _SocialSettingData.fromJson(json);
}

/// @nodoc
mixin _$SocialSettingData {
  @JsonKey(name: 'social_media')
  List<SocialMedia>? get socialMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media_list')
  Map<String, String>? get socialMediaList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialSettingDataCopyWith<SocialSettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialSettingDataCopyWith<$Res> {
  factory $SocialSettingDataCopyWith(
          SocialSettingData value, $Res Function(SocialSettingData) then) =
      _$SocialSettingDataCopyWithImpl<$Res, SocialSettingData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'social_media') List<SocialMedia>? socialMedia,
      @JsonKey(name: 'social_media_list')
      Map<String, String>? socialMediaList});
}

/// @nodoc
class _$SocialSettingDataCopyWithImpl<$Res, $Val extends SocialSettingData>
    implements $SocialSettingDataCopyWith<$Res> {
  _$SocialSettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialMedia = freezed,
    Object? socialMediaList = freezed,
  }) {
    return _then(_value.copyWith(
      socialMedia: freezed == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>?,
      socialMediaList: freezed == socialMediaList
          ? _value.socialMediaList
          : socialMediaList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialSettingDataImplCopyWith<$Res>
    implements $SocialSettingDataCopyWith<$Res> {
  factory _$$SocialSettingDataImplCopyWith(_$SocialSettingDataImpl value,
          $Res Function(_$SocialSettingDataImpl) then) =
      __$$SocialSettingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'social_media') List<SocialMedia>? socialMedia,
      @JsonKey(name: 'social_media_list')
      Map<String, String>? socialMediaList});
}

/// @nodoc
class __$$SocialSettingDataImplCopyWithImpl<$Res>
    extends _$SocialSettingDataCopyWithImpl<$Res, _$SocialSettingDataImpl>
    implements _$$SocialSettingDataImplCopyWith<$Res> {
  __$$SocialSettingDataImplCopyWithImpl(_$SocialSettingDataImpl _value,
      $Res Function(_$SocialSettingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialMedia = freezed,
    Object? socialMediaList = freezed,
  }) {
    return _then(_$SocialSettingDataImpl(
      socialMedia: freezed == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>?,
      socialMediaList: freezed == socialMediaList
          ? _value._socialMediaList
          : socialMediaList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialSettingDataImpl
    with DiagnosticableTreeMixin
    implements _SocialSettingData {
  const _$SocialSettingDataImpl(
      {@JsonKey(name: 'social_media') final List<SocialMedia>? socialMedia,
      @JsonKey(name: 'social_media_list')
      final Map<String, String>? socialMediaList})
      : _socialMedia = socialMedia,
        _socialMediaList = socialMediaList;

  factory _$SocialSettingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialSettingDataImplFromJson(json);

  final List<SocialMedia>? _socialMedia;
  @override
  @JsonKey(name: 'social_media')
  List<SocialMedia>? get socialMedia {
    final value = _socialMedia;
    if (value == null) return null;
    if (_socialMedia is EqualUnmodifiableListView) return _socialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _socialMediaList;
  @override
  @JsonKey(name: 'social_media_list')
  Map<String, String>? get socialMediaList {
    final value = _socialMediaList;
    if (value == null) return null;
    if (_socialMediaList is EqualUnmodifiableMapView) return _socialMediaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocialSettingData(socialMedia: $socialMedia, socialMediaList: $socialMediaList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocialSettingData'))
      ..add(DiagnosticsProperty('socialMedia', socialMedia))
      ..add(DiagnosticsProperty('socialMediaList', socialMediaList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialSettingDataImpl &&
            const DeepCollectionEquality()
                .equals(other._socialMedia, _socialMedia) &&
            const DeepCollectionEquality()
                .equals(other._socialMediaList, _socialMediaList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_socialMedia),
      const DeepCollectionEquality().hash(_socialMediaList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialSettingDataImplCopyWith<_$SocialSettingDataImpl> get copyWith =>
      __$$SocialSettingDataImplCopyWithImpl<_$SocialSettingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialSettingDataImplToJson(
      this,
    );
  }
}

abstract class _SocialSettingData implements SocialSettingData {
  const factory _SocialSettingData(
      {@JsonKey(name: 'social_media') final List<SocialMedia>? socialMedia,
      @JsonKey(name: 'social_media_list')
      final Map<String, String>? socialMediaList}) = _$SocialSettingDataImpl;

  factory _SocialSettingData.fromJson(Map<String, dynamic> json) =
      _$SocialSettingDataImpl.fromJson;

  @override
  @JsonKey(name: 'social_media')
  List<SocialMedia>? get socialMedia;
  @override
  @JsonKey(name: 'social_media_list')
  Map<String, String>? get socialMediaList;
  @override
  @JsonKey(ignore: true)
  _$$SocialSettingDataImplCopyWith<_$SocialSettingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialMedia _$SocialMediaFromJson(Map<String, dynamic> json) {
  return _SocialMedia.fromJson(json);
}

/// @nodoc
mixin _$SocialMedia {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media')
  String? get socialMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaCopyWith<SocialMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaCopyWith<$Res> {
  factory $SocialMediaCopyWith(
          SocialMedia value, $Res Function(SocialMedia) then) =
      _$SocialMediaCopyWithImpl<$Res, SocialMedia>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'social_media') String? socialMedia,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$SocialMediaCopyWithImpl<$Res, $Val extends SocialMedia>
    implements $SocialMediaCopyWith<$Res> {
  _$SocialMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? socialMedia = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      socialMedia: freezed == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialMediaImplCopyWith<$Res>
    implements $SocialMediaCopyWith<$Res> {
  factory _$$SocialMediaImplCopyWith(
          _$SocialMediaImpl value, $Res Function(_$SocialMediaImpl) then) =
      __$$SocialMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'social_media') String? socialMedia,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$SocialMediaImplCopyWithImpl<$Res>
    extends _$SocialMediaCopyWithImpl<$Res, _$SocialMediaImpl>
    implements _$$SocialMediaImplCopyWith<$Res> {
  __$$SocialMediaImplCopyWithImpl(
      _$SocialMediaImpl _value, $Res Function(_$SocialMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? socialMedia = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SocialMediaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      socialMedia: freezed == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialMediaImpl with DiagnosticableTreeMixin implements _SocialMedia {
  const _$SocialMediaImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'social_media') this.socialMedia,
      @JsonKey(name: 'url') this.url});

  factory _$SocialMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialMediaImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'social_media')
  final String? socialMedia;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocialMedia(id: $id, socialMedia: $socialMedia, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocialMedia'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('socialMedia', socialMedia))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.socialMedia, socialMedia) ||
                other.socialMedia == socialMedia) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, socialMedia, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaImplCopyWith<_$SocialMediaImpl> get copyWith =>
      __$$SocialMediaImplCopyWithImpl<_$SocialMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialMediaImplToJson(
      this,
    );
  }
}

abstract class _SocialMedia implements SocialMedia {
  const factory _SocialMedia(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'social_media') final String? socialMedia,
      @JsonKey(name: 'url') final String? url}) = _$SocialMediaImpl;

  factory _SocialMedia.fromJson(Map<String, dynamic> json) =
      _$SocialMediaImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'social_media')
  String? get socialMedia;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$SocialMediaImplCopyWith<_$SocialMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
