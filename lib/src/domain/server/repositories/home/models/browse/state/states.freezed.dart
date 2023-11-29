// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

States _$StatesFromJson(Map<String, dynamic> json) {
  return _States.fromJson(json);
}

/// @nodoc
mixin _$States {
  @JsonKey(name: 'live_jobs')
  int? get liveJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_jobs')
  int? get newJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'companies')
  int? get companies => throw _privateConstructorUsedError;
  @JsonKey(name: 'candidates')
  int? get candidates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatesCopyWith<States> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatesCopyWith<$Res> {
  factory $StatesCopyWith(States value, $Res Function(States) then) =
      _$StatesCopyWithImpl<$Res, States>;
  @useResult
  $Res call(
      {@JsonKey(name: 'live_jobs') int? liveJobs,
      @JsonKey(name: 'new_jobs') int? newJobs,
      @JsonKey(name: 'companies') int? companies,
      @JsonKey(name: 'candidates') int? candidates});
}

/// @nodoc
class _$StatesCopyWithImpl<$Res, $Val extends States>
    implements $StatesCopyWith<$Res> {
  _$StatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveJobs = freezed,
    Object? newJobs = freezed,
    Object? companies = freezed,
    Object? candidates = freezed,
  }) {
    return _then(_value.copyWith(
      liveJobs: freezed == liveJobs
          ? _value.liveJobs
          : liveJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      newJobs: freezed == newJobs
          ? _value.newJobs
          : newJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as int?,
      candidates: freezed == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatesImplCopyWith<$Res> implements $StatesCopyWith<$Res> {
  factory _$$StatesImplCopyWith(
          _$StatesImpl value, $Res Function(_$StatesImpl) then) =
      __$$StatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'live_jobs') int? liveJobs,
      @JsonKey(name: 'new_jobs') int? newJobs,
      @JsonKey(name: 'companies') int? companies,
      @JsonKey(name: 'candidates') int? candidates});
}

/// @nodoc
class __$$StatesImplCopyWithImpl<$Res>
    extends _$StatesCopyWithImpl<$Res, _$StatesImpl>
    implements _$$StatesImplCopyWith<$Res> {
  __$$StatesImplCopyWithImpl(
      _$StatesImpl _value, $Res Function(_$StatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveJobs = freezed,
    Object? newJobs = freezed,
    Object? companies = freezed,
    Object? candidates = freezed,
  }) {
    return _then(_$StatesImpl(
      liveJobs: freezed == liveJobs
          ? _value.liveJobs
          : liveJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      newJobs: freezed == newJobs
          ? _value.newJobs
          : newJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as int?,
      candidates: freezed == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatesImpl with DiagnosticableTreeMixin implements _States {
  const _$StatesImpl(
      {@JsonKey(name: 'live_jobs') this.liveJobs,
      @JsonKey(name: 'new_jobs') this.newJobs,
      @JsonKey(name: 'companies') this.companies,
      @JsonKey(name: 'candidates') this.candidates});

  factory _$StatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatesImplFromJson(json);

  @override
  @JsonKey(name: 'live_jobs')
  final int? liveJobs;
  @override
  @JsonKey(name: 'new_jobs')
  final int? newJobs;
  @override
  @JsonKey(name: 'companies')
  final int? companies;
  @override
  @JsonKey(name: 'candidates')
  final int? candidates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'States(liveJobs: $liveJobs, newJobs: $newJobs, companies: $companies, candidates: $candidates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'States'))
      ..add(DiagnosticsProperty('liveJobs', liveJobs))
      ..add(DiagnosticsProperty('newJobs', newJobs))
      ..add(DiagnosticsProperty('companies', companies))
      ..add(DiagnosticsProperty('candidates', candidates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatesImpl &&
            (identical(other.liveJobs, liveJobs) ||
                other.liveJobs == liveJobs) &&
            (identical(other.newJobs, newJobs) || other.newJobs == newJobs) &&
            (identical(other.companies, companies) ||
                other.companies == companies) &&
            (identical(other.candidates, candidates) ||
                other.candidates == candidates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, liveJobs, newJobs, companies, candidates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatesImplCopyWith<_$StatesImpl> get copyWith =>
      __$$StatesImplCopyWithImpl<_$StatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatesImplToJson(
      this,
    );
  }
}

abstract class _States implements States {
  const factory _States(
      {@JsonKey(name: 'live_jobs') final int? liveJobs,
      @JsonKey(name: 'new_jobs') final int? newJobs,
      @JsonKey(name: 'companies') final int? companies,
      @JsonKey(name: 'candidates') final int? candidates}) = _$StatesImpl;

  factory _States.fromJson(Map<String, dynamic> json) = _$StatesImpl.fromJson;

  @override
  @JsonKey(name: 'live_jobs')
  int? get liveJobs;
  @override
  @JsonKey(name: 'new_jobs')
  int? get newJobs;
  @override
  @JsonKey(name: 'companies')
  int? get companies;
  @override
  @JsonKey(name: 'candidates')
  int? get candidates;
  @override
  @JsonKey(ignore: true)
  _$$StatesImplCopyWith<_$StatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
