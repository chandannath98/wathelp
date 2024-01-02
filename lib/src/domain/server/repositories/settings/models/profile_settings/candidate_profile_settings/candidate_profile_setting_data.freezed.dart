// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate_profile_setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandidateProfileSettingData _$CandidateProfileSettingDataFromJson(
    Map<String, dynamic> json) {
  return _CandidateProfileSettingData.fromJson(json);
}

/// @nodoc
mixin _$CandidateProfileSettingData {
  @JsonKey(name: 'gender')
  Gender? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  MaritalStatus? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'profession_id')
  int? get professionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'availability')
  String? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_in')
  String? get availableIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'skills')
  List<Skills>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: 'languages')
  List<Languages>? get languages => throw _privateConstructorUsedError;
  @JsonKey(name: 'profession_list')
  List<ProfessionList>? get professionList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'skill_list')
  List<SkillList>? get skillList => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_list')
  List<LanguageList>? get languageList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateProfileSettingDataCopyWith<CandidateProfileSettingData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateProfileSettingDataCopyWith<$Res> {
  factory $CandidateProfileSettingDataCopyWith(
          CandidateProfileSettingData value,
          $Res Function(CandidateProfileSettingData) then) =
      _$CandidateProfileSettingDataCopyWithImpl<$Res,
          CandidateProfileSettingData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gender') Gender? gender,
      @JsonKey(name: 'marital_status') MaritalStatus? maritalStatus,
      @JsonKey(name: 'profession_id') int? professionId,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'availability') String? availability,
      @JsonKey(name: 'available_in') String? availableIn,
      @JsonKey(name: 'skills') List<Skills>? skills,
      @JsonKey(name: 'languages') List<Languages>? languages,
      @JsonKey(name: 'profession_list') List<ProfessionList>? professionList,
      @JsonKey(name: 'skill_list') List<SkillList>? skillList,
      @JsonKey(name: 'language_list') List<LanguageList>? languageList});
}

/// @nodoc
class _$CandidateProfileSettingDataCopyWithImpl<$Res,
        $Val extends CandidateProfileSettingData>
    implements $CandidateProfileSettingDataCopyWith<$Res> {
  _$CandidateProfileSettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? maritalStatus = freezed,
    Object? professionId = freezed,
    Object? bio = freezed,
    Object? availability = freezed,
    Object? availableIn = freezed,
    Object? skills = freezed,
    Object? languages = freezed,
    Object? professionList = freezed,
    Object? skillList = freezed,
    Object? languageList = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as MaritalStatus?,
      professionId: freezed == professionId
          ? _value.professionId
          : professionId // ignore: cast_nullable_to_non_nullable
              as int?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      availableIn: freezed == availableIn
          ? _value.availableIn
          : availableIn // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skills>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Languages>?,
      professionList: freezed == professionList
          ? _value.professionList
          : professionList // ignore: cast_nullable_to_non_nullable
              as List<ProfessionList>?,
      skillList: freezed == skillList
          ? _value.skillList
          : skillList // ignore: cast_nullable_to_non_nullable
              as List<SkillList>?,
      languageList: freezed == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CandidateProfileSettingDataImplCopyWith<$Res>
    implements $CandidateProfileSettingDataCopyWith<$Res> {
  factory _$$CandidateProfileSettingDataImplCopyWith(
          _$CandidateProfileSettingDataImpl value,
          $Res Function(_$CandidateProfileSettingDataImpl) then) =
      __$$CandidateProfileSettingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gender') Gender? gender,
      @JsonKey(name: 'marital_status') MaritalStatus? maritalStatus,
      @JsonKey(name: 'profession_id') int? professionId,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'availability') String? availability,
      @JsonKey(name: 'available_in') String? availableIn,
      @JsonKey(name: 'skills') List<Skills>? skills,
      @JsonKey(name: 'languages') List<Languages>? languages,
      @JsonKey(name: 'profession_list') List<ProfessionList>? professionList,
      @JsonKey(name: 'skill_list') List<SkillList>? skillList,
      @JsonKey(name: 'language_list') List<LanguageList>? languageList});
}

/// @nodoc
class __$$CandidateProfileSettingDataImplCopyWithImpl<$Res>
    extends _$CandidateProfileSettingDataCopyWithImpl<$Res,
        _$CandidateProfileSettingDataImpl>
    implements _$$CandidateProfileSettingDataImplCopyWith<$Res> {
  __$$CandidateProfileSettingDataImplCopyWithImpl(
      _$CandidateProfileSettingDataImpl _value,
      $Res Function(_$CandidateProfileSettingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? maritalStatus = freezed,
    Object? professionId = freezed,
    Object? bio = freezed,
    Object? availability = freezed,
    Object? availableIn = freezed,
    Object? skills = freezed,
    Object? languages = freezed,
    Object? professionList = freezed,
    Object? skillList = freezed,
    Object? languageList = freezed,
  }) {
    return _then(_$CandidateProfileSettingDataImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as MaritalStatus?,
      professionId: freezed == professionId
          ? _value.professionId
          : professionId // ignore: cast_nullable_to_non_nullable
              as int?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      availableIn: freezed == availableIn
          ? _value.availableIn
          : availableIn // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skills>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Languages>?,
      professionList: freezed == professionList
          ? _value._professionList
          : professionList // ignore: cast_nullable_to_non_nullable
              as List<ProfessionList>?,
      skillList: freezed == skillList
          ? _value._skillList
          : skillList // ignore: cast_nullable_to_non_nullable
              as List<SkillList>?,
      languageList: freezed == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidateProfileSettingDataImpl
    with DiagnosticableTreeMixin
    implements _CandidateProfileSettingData {
  const _$CandidateProfileSettingDataImpl(
      {@JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'marital_status') this.maritalStatus,
      @JsonKey(name: 'profession_id') this.professionId,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'availability') this.availability,
      @JsonKey(name: 'available_in') this.availableIn,
      @JsonKey(name: 'skills') final List<Skills>? skills,
      @JsonKey(name: 'languages') final List<Languages>? languages,
      @JsonKey(name: 'profession_list')
      final List<ProfessionList>? professionList,
      @JsonKey(name: 'skill_list') final List<SkillList>? skillList,
      @JsonKey(name: 'language_list') final List<LanguageList>? languageList})
      : _skills = skills,
        _languages = languages,
        _professionList = professionList,
        _skillList = skillList,
        _languageList = languageList;

  factory _$CandidateProfileSettingDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CandidateProfileSettingDataImplFromJson(json);

  @override
  @JsonKey(name: 'gender')
  final Gender? gender;
  @override
  @JsonKey(name: 'marital_status')
  final MaritalStatus? maritalStatus;
  @override
  @JsonKey(name: 'profession_id')
  final int? professionId;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'availability')
  final String? availability;
  @override
  @JsonKey(name: 'available_in')
  final String? availableIn;
  final List<Skills>? _skills;
  @override
  @JsonKey(name: 'skills')
  List<Skills>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Languages>? _languages;
  @override
  @JsonKey(name: 'languages')
  List<Languages>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProfessionList>? _professionList;
  @override
  @JsonKey(name: 'profession_list')
  List<ProfessionList>? get professionList {
    final value = _professionList;
    if (value == null) return null;
    if (_professionList is EqualUnmodifiableListView) return _professionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SkillList>? _skillList;
  @override
  @JsonKey(name: 'skill_list')
  List<SkillList>? get skillList {
    final value = _skillList;
    if (value == null) return null;
    if (_skillList is EqualUnmodifiableListView) return _skillList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguageList>? _languageList;
  @override
  @JsonKey(name: 'language_list')
  List<LanguageList>? get languageList {
    final value = _languageList;
    if (value == null) return null;
    if (_languageList is EqualUnmodifiableListView) return _languageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CandidateProfileSettingData(gender: $gender, maritalStatus: $maritalStatus, professionId: $professionId, bio: $bio, availability: $availability, availableIn: $availableIn, skills: $skills, languages: $languages, professionList: $professionList, skillList: $skillList, languageList: $languageList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CandidateProfileSettingData'))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('maritalStatus', maritalStatus))
      ..add(DiagnosticsProperty('professionId', professionId))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('availability', availability))
      ..add(DiagnosticsProperty('availableIn', availableIn))
      ..add(DiagnosticsProperty('skills', skills))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('professionList', professionList))
      ..add(DiagnosticsProperty('skillList', skillList))
      ..add(DiagnosticsProperty('languageList', languageList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandidateProfileSettingDataImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.professionId, professionId) ||
                other.professionId == professionId) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.availableIn, availableIn) ||
                other.availableIn == availableIn) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._professionList, _professionList) &&
            const DeepCollectionEquality()
                .equals(other._skillList, _skillList) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      maritalStatus,
      professionId,
      bio,
      availability,
      availableIn,
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_professionList),
      const DeepCollectionEquality().hash(_skillList),
      const DeepCollectionEquality().hash(_languageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CandidateProfileSettingDataImplCopyWith<_$CandidateProfileSettingDataImpl>
      get copyWith => __$$CandidateProfileSettingDataImplCopyWithImpl<
          _$CandidateProfileSettingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandidateProfileSettingDataImplToJson(
      this,
    );
  }
}

abstract class _CandidateProfileSettingData
    implements CandidateProfileSettingData {
  const factory _CandidateProfileSettingData(
          {@JsonKey(name: 'gender') final Gender? gender,
          @JsonKey(name: 'marital_status') final MaritalStatus? maritalStatus,
          @JsonKey(name: 'profession_id') final int? professionId,
          @JsonKey(name: 'bio') final String? bio,
          @JsonKey(name: 'availability') final String? availability,
          @JsonKey(name: 'available_in') final String? availableIn,
          @JsonKey(name: 'skills') final List<Skills>? skills,
          @JsonKey(name: 'languages') final List<Languages>? languages,
          @JsonKey(name: 'profession_list')
          final List<ProfessionList>? professionList,
          @JsonKey(name: 'skill_list') final List<SkillList>? skillList,
          @JsonKey(name: 'language_list')
          final List<LanguageList>? languageList}) =
      _$CandidateProfileSettingDataImpl;

  factory _CandidateProfileSettingData.fromJson(Map<String, dynamic> json) =
      _$CandidateProfileSettingDataImpl.fromJson;

  @override
  @JsonKey(name: 'gender')
  Gender? get gender;
  @override
  @JsonKey(name: 'marital_status')
  MaritalStatus? get maritalStatus;
  @override
  @JsonKey(name: 'profession_id')
  int? get professionId;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'availability')
  String? get availability;
  @override
  @JsonKey(name: 'available_in')
  String? get availableIn;
  @override
  @JsonKey(name: 'skills')
  List<Skills>? get skills;
  @override
  @JsonKey(name: 'languages')
  List<Languages>? get languages;
  @override
  @JsonKey(name: 'profession_list')
  List<ProfessionList>? get professionList;
  @override
  @JsonKey(name: 'skill_list')
  List<SkillList>? get skillList;
  @override
  @JsonKey(name: 'language_list')
  List<LanguageList>? get languageList;
  @override
  @JsonKey(ignore: true)
  _$$CandidateProfileSettingDataImplCopyWith<_$CandidateProfileSettingDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Skills _$SkillsFromJson(Map<String, dynamic> json) {
  return _Skills.fromJson(json);
}

/// @nodoc
mixin _$Skills {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsCopyWith<Skills> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsCopyWith<$Res> {
  factory $SkillsCopyWith(Skills value, $Res Function(Skills) then) =
      _$SkillsCopyWithImpl<$Res, Skills>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$SkillsCopyWithImpl<$Res, $Val extends Skills>
    implements $SkillsCopyWith<$Res> {
  _$SkillsCopyWithImpl(this._value, this._then);

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
abstract class _$$SkillsImplCopyWith<$Res> implements $SkillsCopyWith<$Res> {
  factory _$$SkillsImplCopyWith(
          _$SkillsImpl value, $Res Function(_$SkillsImpl) then) =
      __$$SkillsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$SkillsImplCopyWithImpl<$Res>
    extends _$SkillsCopyWithImpl<$Res, _$SkillsImpl>
    implements _$$SkillsImplCopyWith<$Res> {
  __$$SkillsImplCopyWithImpl(
      _$SkillsImpl _value, $Res Function(_$SkillsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SkillsImpl(
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
class _$SkillsImpl with DiagnosticableTreeMixin implements _Skills {
  const _$SkillsImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$SkillsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Skills(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Skills'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillsImplCopyWith<_$SkillsImpl> get copyWith =>
      __$$SkillsImplCopyWithImpl<_$SkillsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillsImplToJson(
      this,
    );
  }
}

abstract class _Skills implements Skills {
  const factory _Skills(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$SkillsImpl;

  factory _Skills.fromJson(Map<String, dynamic> json) = _$SkillsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SkillsImplCopyWith<_$SkillsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Languages _$LanguagesFromJson(Map<String, dynamic> json) {
  return _Languages.fromJson(json);
}

/// @nodoc
mixin _$Languages {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagesCopyWith<Languages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesCopyWith<$Res> {
  factory $LanguagesCopyWith(Languages value, $Res Function(Languages) then) =
      _$LanguagesCopyWithImpl<$Res, Languages>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$LanguagesCopyWithImpl<$Res, $Val extends Languages>
    implements $LanguagesCopyWith<$Res> {
  _$LanguagesCopyWithImpl(this._value, this._then);

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
abstract class _$$LanguagesImplCopyWith<$Res>
    implements $LanguagesCopyWith<$Res> {
  factory _$$LanguagesImplCopyWith(
          _$LanguagesImpl value, $Res Function(_$LanguagesImpl) then) =
      __$$LanguagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$LanguagesImplCopyWithImpl<$Res>
    extends _$LanguagesCopyWithImpl<$Res, _$LanguagesImpl>
    implements _$$LanguagesImplCopyWith<$Res> {
  __$$LanguagesImplCopyWithImpl(
      _$LanguagesImpl _value, $Res Function(_$LanguagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$LanguagesImpl(
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
class _$LanguagesImpl with DiagnosticableTreeMixin implements _Languages {
  const _$LanguagesImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$LanguagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguagesImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Languages(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Languages'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguagesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguagesImplCopyWith<_$LanguagesImpl> get copyWith =>
      __$$LanguagesImplCopyWithImpl<_$LanguagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguagesImplToJson(
      this,
    );
  }
}

abstract class _Languages implements Languages {
  const factory _Languages(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$LanguagesImpl;

  factory _Languages.fromJson(Map<String, dynamic> json) =
      _$LanguagesImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$LanguagesImplCopyWith<_$LanguagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfessionList _$ProfessionListFromJson(Map<String, dynamic> json) {
  return _ProfessionList.fromJson(json);
}

/// @nodoc
mixin _$ProfessionList {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionListCopyWith<ProfessionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionListCopyWith<$Res> {
  factory $ProfessionListCopyWith(
          ProfessionList value, $Res Function(ProfessionList) then) =
      _$ProfessionListCopyWithImpl<$Res, ProfessionList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$ProfessionListCopyWithImpl<$Res, $Val extends ProfessionList>
    implements $ProfessionListCopyWith<$Res> {
  _$ProfessionListCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfessionListImplCopyWith<$Res>
    implements $ProfessionListCopyWith<$Res> {
  factory _$$ProfessionListImplCopyWith(_$ProfessionListImpl value,
          $Res Function(_$ProfessionListImpl) then) =
      __$$ProfessionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$ProfessionListImplCopyWithImpl<$Res>
    extends _$ProfessionListCopyWithImpl<$Res, _$ProfessionListImpl>
    implements _$$ProfessionListImplCopyWith<$Res> {
  __$$ProfessionListImplCopyWithImpl(
      _$ProfessionListImpl _value, $Res Function(_$ProfessionListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProfessionListImpl(
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
class _$ProfessionListImpl
    with DiagnosticableTreeMixin
    implements _ProfessionList {
  const _$ProfessionListImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$ProfessionListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionListImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfessionList(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfessionList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionListImplCopyWith<_$ProfessionListImpl> get copyWith =>
      __$$ProfessionListImplCopyWithImpl<_$ProfessionListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionListImplToJson(
      this,
    );
  }
}

abstract class _ProfessionList implements ProfessionList {
  const factory _ProfessionList(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$ProfessionListImpl;

  factory _ProfessionList.fromJson(Map<String, dynamic> json) =
      _$ProfessionListImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProfessionListImplCopyWith<_$ProfessionListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SkillList _$SkillListFromJson(Map<String, dynamic> json) {
  return _SkillList.fromJson(json);
}

/// @nodoc
mixin _$SkillList {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillListCopyWith<SkillList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillListCopyWith<$Res> {
  factory $SkillListCopyWith(SkillList value, $Res Function(SkillList) then) =
      _$SkillListCopyWithImpl<$Res, SkillList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$SkillListCopyWithImpl<$Res, $Val extends SkillList>
    implements $SkillListCopyWith<$Res> {
  _$SkillListCopyWithImpl(this._value, this._then);

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
abstract class _$$SkillListImplCopyWith<$Res>
    implements $SkillListCopyWith<$Res> {
  factory _$$SkillListImplCopyWith(
          _$SkillListImpl value, $Res Function(_$SkillListImpl) then) =
      __$$SkillListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$SkillListImplCopyWithImpl<$Res>
    extends _$SkillListCopyWithImpl<$Res, _$SkillListImpl>
    implements _$$SkillListImplCopyWith<$Res> {
  __$$SkillListImplCopyWithImpl(
      _$SkillListImpl _value, $Res Function(_$SkillListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SkillListImpl(
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
class _$SkillListImpl with DiagnosticableTreeMixin implements _SkillList {
  const _$SkillListImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$SkillListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillListImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SkillList(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SkillList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillListImplCopyWith<_$SkillListImpl> get copyWith =>
      __$$SkillListImplCopyWithImpl<_$SkillListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillListImplToJson(
      this,
    );
  }
}

abstract class _SkillList implements SkillList {
  const factory _SkillList(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$SkillListImpl;

  factory _SkillList.fromJson(Map<String, dynamic> json) =
      _$SkillListImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SkillListImplCopyWith<_$SkillListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageList _$LanguageListFromJson(Map<String, dynamic> json) {
  return _LanguageList.fromJson(json);
}

/// @nodoc
mixin _$LanguageList {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageListCopyWith<LanguageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageListCopyWith<$Res> {
  factory $LanguageListCopyWith(
          LanguageList value, $Res Function(LanguageList) then) =
      _$LanguageListCopyWithImpl<$Res, LanguageList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$LanguageListCopyWithImpl<$Res, $Val extends LanguageList>
    implements $LanguageListCopyWith<$Res> {
  _$LanguageListCopyWithImpl(this._value, this._then);

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
abstract class _$$LanguageListImplCopyWith<$Res>
    implements $LanguageListCopyWith<$Res> {
  factory _$$LanguageListImplCopyWith(
          _$LanguageListImpl value, $Res Function(_$LanguageListImpl) then) =
      __$$LanguageListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$LanguageListImplCopyWithImpl<$Res>
    extends _$LanguageListCopyWithImpl<$Res, _$LanguageListImpl>
    implements _$$LanguageListImplCopyWith<$Res> {
  __$$LanguageListImplCopyWithImpl(
      _$LanguageListImpl _value, $Res Function(_$LanguageListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$LanguageListImpl(
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
class _$LanguageListImpl with DiagnosticableTreeMixin implements _LanguageList {
  const _$LanguageListImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$LanguageListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageListImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguageList(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LanguageList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageListImplCopyWith<_$LanguageListImpl> get copyWith =>
      __$$LanguageListImplCopyWithImpl<_$LanguageListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageListImplToJson(
      this,
    );
  }
}

abstract class _LanguageList implements LanguageList {
  const factory _LanguageList(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$LanguageListImpl;

  factory _LanguageList.fromJson(Map<String, dynamic> json) =
      _$LanguageListImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$LanguageListImplCopyWith<_$LanguageListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
