// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobDetailResponse _$JobDetailResponseFromJson(Map<String, dynamic> json) {
  return _JobDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$JobDetailResponse {
  @JsonKey(name: 'job')
  JobDetails? get job => throw _privateConstructorUsedError;
  @JsonKey(name: 'resumes')
  List<JobResume>? get resumes => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_jobs')
  List<RelatedJob>? get relatedJobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailResponseCopyWith<JobDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailResponseCopyWith<$Res> {
  factory $JobDetailResponseCopyWith(
          JobDetailResponse value, $Res Function(JobDetailResponse) then) =
      _$JobDetailResponseCopyWithImpl<$Res, JobDetailResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job') JobDetails? job,
      @JsonKey(name: 'resumes') List<JobResume>? resumes,
      @JsonKey(name: 'related_jobs') List<RelatedJob>? relatedJobs});

  $JobDetailsCopyWith<$Res>? get job;
}

/// @nodoc
class _$JobDetailResponseCopyWithImpl<$Res, $Val extends JobDetailResponse>
    implements $JobDetailResponseCopyWith<$Res> {
  _$JobDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = freezed,
    Object? resumes = freezed,
    Object? relatedJobs = freezed,
  }) {
    return _then(_value.copyWith(
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as JobDetails?,
      resumes: freezed == resumes
          ? _value.resumes
          : resumes // ignore: cast_nullable_to_non_nullable
              as List<JobResume>?,
      relatedJobs: freezed == relatedJobs
          ? _value.relatedJobs
          : relatedJobs // ignore: cast_nullable_to_non_nullable
              as List<RelatedJob>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobDetailsCopyWith<$Res>? get job {
    if (_value.job == null) {
      return null;
    }

    return $JobDetailsCopyWith<$Res>(_value.job!, (value) {
      return _then(_value.copyWith(job: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobDetailResponseImplCopyWith<$Res>
    implements $JobDetailResponseCopyWith<$Res> {
  factory _$$JobDetailResponseImplCopyWith(_$JobDetailResponseImpl value,
          $Res Function(_$JobDetailResponseImpl) then) =
      __$$JobDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job') JobDetails? job,
      @JsonKey(name: 'resumes') List<JobResume>? resumes,
      @JsonKey(name: 'related_jobs') List<RelatedJob>? relatedJobs});

  @override
  $JobDetailsCopyWith<$Res>? get job;
}

/// @nodoc
class __$$JobDetailResponseImplCopyWithImpl<$Res>
    extends _$JobDetailResponseCopyWithImpl<$Res, _$JobDetailResponseImpl>
    implements _$$JobDetailResponseImplCopyWith<$Res> {
  __$$JobDetailResponseImplCopyWithImpl(_$JobDetailResponseImpl _value,
      $Res Function(_$JobDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = freezed,
    Object? resumes = freezed,
    Object? relatedJobs = freezed,
  }) {
    return _then(_$JobDetailResponseImpl(
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as JobDetails?,
      resumes: freezed == resumes
          ? _value._resumes
          : resumes // ignore: cast_nullable_to_non_nullable
              as List<JobResume>?,
      relatedJobs: freezed == relatedJobs
          ? _value._relatedJobs
          : relatedJobs // ignore: cast_nullable_to_non_nullable
              as List<RelatedJob>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDetailResponseImpl
    with DiagnosticableTreeMixin
    implements _JobDetailResponse {
  const _$JobDetailResponseImpl(
      {@JsonKey(name: 'job') this.job,
      @JsonKey(name: 'resumes') final List<JobResume>? resumes,
      @JsonKey(name: 'related_jobs') final List<RelatedJob>? relatedJobs})
      : _resumes = resumes,
        _relatedJobs = relatedJobs;

  factory _$JobDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: 'job')
  final JobDetails? job;
  final List<JobResume>? _resumes;
  @override
  @JsonKey(name: 'resumes')
  List<JobResume>? get resumes {
    final value = _resumes;
    if (value == null) return null;
    if (_resumes is EqualUnmodifiableListView) return _resumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelatedJob>? _relatedJobs;
  @override
  @JsonKey(name: 'related_jobs')
  List<RelatedJob>? get relatedJobs {
    final value = _relatedJobs;
    if (value == null) return null;
    if (_relatedJobs is EqualUnmodifiableListView) return _relatedJobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobDetailResponse(job: $job, resumes: $resumes, relatedJobs: $relatedJobs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobDetailResponse'))
      ..add(DiagnosticsProperty('job', job))
      ..add(DiagnosticsProperty('resumes', resumes))
      ..add(DiagnosticsProperty('relatedJobs', relatedJobs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailResponseImpl &&
            (identical(other.job, job) || other.job == job) &&
            const DeepCollectionEquality().equals(other._resumes, _resumes) &&
            const DeepCollectionEquality()
                .equals(other._relatedJobs, _relatedJobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      job,
      const DeepCollectionEquality().hash(_resumes),
      const DeepCollectionEquality().hash(_relatedJobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailResponseImplCopyWith<_$JobDetailResponseImpl> get copyWith =>
      __$$JobDetailResponseImplCopyWithImpl<_$JobDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _JobDetailResponse implements JobDetailResponse {
  const factory _JobDetailResponse(
          {@JsonKey(name: 'job') final JobDetails? job,
          @JsonKey(name: 'resumes') final List<JobResume>? resumes,
          @JsonKey(name: 'related_jobs') final List<RelatedJob>? relatedJobs}) =
      _$JobDetailResponseImpl;

  factory _JobDetailResponse.fromJson(Map<String, dynamic> json) =
      _$JobDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: 'job')
  JobDetails? get job;
  @override
  @JsonKey(name: 'resumes')
  List<JobResume>? get resumes;
  @override
  @JsonKey(name: 'related_jobs')
  List<RelatedJob>? get relatedJobs;
  @override
  @JsonKey(ignore: true)
  _$$JobDetailResponseImplCopyWith<_$JobDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
