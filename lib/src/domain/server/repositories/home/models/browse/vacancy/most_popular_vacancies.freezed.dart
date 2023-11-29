// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'most_popular_vacancies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MostPopularVacancies _$MostPopularVacanciesFromJson(Map<String, dynamic> json) {
  return _MostPopularVacancies.fromJson(json);
}

/// @nodoc
mixin _$MostPopularVacancies {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_position_count')
  int? get openPositionCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MostPopularVacanciesCopyWith<MostPopularVacancies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostPopularVacanciesCopyWith<$Res> {
  factory $MostPopularVacanciesCopyWith(MostPopularVacancies value,
          $Res Function(MostPopularVacancies) then) =
      _$MostPopularVacanciesCopyWithImpl<$Res, MostPopularVacancies>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'open_position_count') int? openPositionCount});
}

/// @nodoc
class _$MostPopularVacanciesCopyWithImpl<$Res,
        $Val extends MostPopularVacancies>
    implements $MostPopularVacanciesCopyWith<$Res> {
  _$MostPopularVacanciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openPositionCount = freezed,
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
      openPositionCount: freezed == openPositionCount
          ? _value.openPositionCount
          : openPositionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MostPopularVacanciesImplCopyWith<$Res>
    implements $MostPopularVacanciesCopyWith<$Res> {
  factory _$$MostPopularVacanciesImplCopyWith(_$MostPopularVacanciesImpl value,
          $Res Function(_$MostPopularVacanciesImpl) then) =
      __$$MostPopularVacanciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'open_position_count') int? openPositionCount});
}

/// @nodoc
class __$$MostPopularVacanciesImplCopyWithImpl<$Res>
    extends _$MostPopularVacanciesCopyWithImpl<$Res, _$MostPopularVacanciesImpl>
    implements _$$MostPopularVacanciesImplCopyWith<$Res> {
  __$$MostPopularVacanciesImplCopyWithImpl(_$MostPopularVacanciesImpl _value,
      $Res Function(_$MostPopularVacanciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openPositionCount = freezed,
  }) {
    return _then(_$MostPopularVacanciesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openPositionCount: freezed == openPositionCount
          ? _value.openPositionCount
          : openPositionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MostPopularVacanciesImpl
    with DiagnosticableTreeMixin
    implements _MostPopularVacancies {
  const _$MostPopularVacanciesImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'open_position_count') this.openPositionCount});

  factory _$MostPopularVacanciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MostPopularVacanciesImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'open_position_count')
  final int? openPositionCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MostPopularVacancies(id: $id, name: $name, openPositionCount: $openPositionCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MostPopularVacancies'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('openPositionCount', openPositionCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MostPopularVacanciesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.openPositionCount, openPositionCount) ||
                other.openPositionCount == openPositionCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, openPositionCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MostPopularVacanciesImplCopyWith<_$MostPopularVacanciesImpl>
      get copyWith =>
          __$$MostPopularVacanciesImplCopyWithImpl<_$MostPopularVacanciesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MostPopularVacanciesImplToJson(
      this,
    );
  }
}

abstract class _MostPopularVacancies implements MostPopularVacancies {
  const factory _MostPopularVacancies(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'open_position_count') final int? openPositionCount}) =
      _$MostPopularVacanciesImpl;

  factory _MostPopularVacancies.fromJson(Map<String, dynamic> json) =
      _$MostPopularVacanciesImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'open_position_count')
  int? get openPositionCount;
  @override
  @JsonKey(ignore: true)
  _$$MostPopularVacanciesImplCopyWith<_$MostPopularVacanciesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
