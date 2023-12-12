// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_translations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizationTranslations _$OrganizationTranslationsFromJson(
    Map<String, dynamic> json) {
  return _OrganizationTranslations.fromJson(json);
}

/// @nodoc
mixin _$OrganizationTranslations {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_type_id')
  int? get organizationTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'locale')
  String? get locale => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationTranslationsCopyWith<OrganizationTranslations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationTranslationsCopyWith<$Res> {
  factory $OrganizationTranslationsCopyWith(OrganizationTranslations value,
          $Res Function(OrganizationTranslations) then) =
      _$OrganizationTranslationsCopyWithImpl<$Res, OrganizationTranslations>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'organization_type_id') int? organizationTypeId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'locale') String? locale,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$OrganizationTranslationsCopyWithImpl<$Res,
        $Val extends OrganizationTranslations>
    implements $OrganizationTranslationsCopyWith<$Res> {
  _$OrganizationTranslationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationTypeId = freezed,
    Object? name = freezed,
    Object? locale = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationTypeId: freezed == organizationTypeId
          ? _value.organizationTypeId
          : organizationTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrganizationTranslationsImplCopyWith<$Res>
    implements $OrganizationTranslationsCopyWith<$Res> {
  factory _$$OrganizationTranslationsImplCopyWith(
          _$OrganizationTranslationsImpl value,
          $Res Function(_$OrganizationTranslationsImpl) then) =
      __$$OrganizationTranslationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'organization_type_id') int? organizationTypeId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'locale') String? locale,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$OrganizationTranslationsImplCopyWithImpl<$Res>
    extends _$OrganizationTranslationsCopyWithImpl<$Res,
        _$OrganizationTranslationsImpl>
    implements _$$OrganizationTranslationsImplCopyWith<$Res> {
  __$$OrganizationTranslationsImplCopyWithImpl(
      _$OrganizationTranslationsImpl _value,
      $Res Function(_$OrganizationTranslationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationTypeId = freezed,
    Object? name = freezed,
    Object? locale = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrganizationTranslationsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationTypeId: freezed == organizationTypeId
          ? _value.organizationTypeId
          : organizationTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
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
class _$OrganizationTranslationsImpl
    with DiagnosticableTreeMixin
    implements _OrganizationTranslations {
  const _$OrganizationTranslationsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'organization_type_id') this.organizationTypeId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'locale') this.locale,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OrganizationTranslationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationTranslationsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'organization_type_id')
  final int? organizationTypeId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'locale')
  final String? locale;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationTranslations(id: $id, organizationTypeId: $organizationTypeId, name: $name, locale: $locale, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationTranslations'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('organizationTypeId', organizationTypeId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationTranslationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationTypeId, organizationTypeId) ||
                other.organizationTypeId == organizationTypeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, organizationTypeId, name, locale, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationTranslationsImplCopyWith<_$OrganizationTranslationsImpl>
      get copyWith => __$$OrganizationTranslationsImplCopyWithImpl<
          _$OrganizationTranslationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationTranslationsImplToJson(
      this,
    );
  }
}

abstract class _OrganizationTranslations implements OrganizationTranslations {
  const factory _OrganizationTranslations(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'organization_type_id') final int? organizationTypeId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'locale') final String? locale,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$OrganizationTranslationsImpl;

  factory _OrganizationTranslations.fromJson(Map<String, dynamic> json) =
      _$OrganizationTranslationsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'organization_type_id')
  int? get organizationTypeId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'locale')
  String? get locale;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationTranslationsImplCopyWith<_$OrganizationTranslationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
