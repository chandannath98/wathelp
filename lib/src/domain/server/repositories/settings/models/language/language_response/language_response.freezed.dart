// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageResponse _$LanguageResponseFromJson(Map<String, dynamic> json) {
  return _LanguageResponse.fromJson(json);
}

/// @nodoc
mixin _$LanguageResponse {
  @JsonKey(name: 'current_language')
  int? get currentLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'languages')
  List<Language>? get languages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageResponseCopyWith<LanguageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageResponseCopyWith<$Res> {
  factory $LanguageResponseCopyWith(
          LanguageResponse value, $Res Function(LanguageResponse) then) =
      _$LanguageResponseCopyWithImpl<$Res, LanguageResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_language') int? currentLanguage,
      @JsonKey(name: 'languages') List<Language>? languages});
}

/// @nodoc
class _$LanguageResponseCopyWithImpl<$Res, $Val extends LanguageResponse>
    implements $LanguageResponseCopyWith<$Res> {
  _$LanguageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? languages = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageResponseImplCopyWith<$Res>
    implements $LanguageResponseCopyWith<$Res> {
  factory _$$LanguageResponseImplCopyWith(_$LanguageResponseImpl value,
          $Res Function(_$LanguageResponseImpl) then) =
      __$$LanguageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_language') int? currentLanguage,
      @JsonKey(name: 'languages') List<Language>? languages});
}

/// @nodoc
class __$$LanguageResponseImplCopyWithImpl<$Res>
    extends _$LanguageResponseCopyWithImpl<$Res, _$LanguageResponseImpl>
    implements _$$LanguageResponseImplCopyWith<$Res> {
  __$$LanguageResponseImplCopyWithImpl(_$LanguageResponseImpl _value,
      $Res Function(_$LanguageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? languages = freezed,
  }) {
    return _then(_$LanguageResponseImpl(
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageResponseImpl
    with DiagnosticableTreeMixin
    implements _LanguageResponse {
  const _$LanguageResponseImpl(
      {@JsonKey(name: 'current_language') this.currentLanguage,
      @JsonKey(name: 'languages') final List<Language>? languages})
      : _languages = languages;

  factory _$LanguageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'current_language')
  final int? currentLanguage;
  final List<Language>? _languages;
  @override
  @JsonKey(name: 'languages')
  List<Language>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguageResponse(currentLanguage: $currentLanguage, languages: $languages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LanguageResponse'))
      ..add(DiagnosticsProperty('currentLanguage', currentLanguage))
      ..add(DiagnosticsProperty('languages', languages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageResponseImpl &&
            (identical(other.currentLanguage, currentLanguage) ||
                other.currentLanguage == currentLanguage) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentLanguage,
      const DeepCollectionEquality().hash(_languages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageResponseImplCopyWith<_$LanguageResponseImpl> get copyWith =>
      __$$LanguageResponseImplCopyWithImpl<_$LanguageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageResponseImplToJson(
      this,
    );
  }
}

abstract class _LanguageResponse implements LanguageResponse {
  const factory _LanguageResponse(
          {@JsonKey(name: 'current_language') final int? currentLanguage,
          @JsonKey(name: 'languages') final List<Language>? languages}) =
      _$LanguageResponseImpl;

  factory _LanguageResponse.fromJson(Map<String, dynamic> json) =
      _$LanguageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'current_language')
  int? get currentLanguage;
  @override
  @JsonKey(name: 'languages')
  List<Language>? get languages;
  @override
  @JsonKey(ignore: true)
  _$$LanguageResponseImplCopyWith<_$LanguageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
