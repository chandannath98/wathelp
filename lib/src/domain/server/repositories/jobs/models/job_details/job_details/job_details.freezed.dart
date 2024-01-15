// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobDetails _$JobDetailsFromJson(Map<String, dynamic> json) {
  return _JobDetails.fromJson(json);
}

/// @nodoc
mixin _$JobDetails {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'vacancies')
  String? get vacancies => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary')
  String? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_salary')
  int? get minSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_salary')
  int? get maxSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_mode')
  String? get salaryMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_salary')
  String? get customSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type')
  String? get jobType => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline')
  String? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_on')
  ApplyStyle? get applyOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_email')
  String? get applyEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_url')
  String? get applyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured')
  bool? get featured => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_until')
  String? get featuredUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlight')
  bool? get highlight => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlight_until')
  String? get highlightUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_remote')
  int? get isRemote => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookmarked')
  bool? get bookmarked => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied')
  bool? get applied => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_remaining')
  String? get daysRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline_active')
  bool? get deadlineActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'posted_at')
  String? get postedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_apply')
  bool? get canApply => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'benefits')
  List<String>? get benefits => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'education')
  String? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'company')
  Company? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailsCopyWith<JobDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsCopyWith<$Res> {
  factory $JobDetailsCopyWith(
          JobDetails value, $Res Function(JobDetails) then) =
      _$JobDetailsCopyWithImpl<$Res, JobDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'vacancies') String? vacancies,
      @JsonKey(name: 'salary') String? salary,
      @JsonKey(name: 'min_salary') int? minSalary,
      @JsonKey(name: 'max_salary') int? maxSalary,
      @JsonKey(name: 'salary_mode') String? salaryMode,
      @JsonKey(name: 'custom_salary') String? customSalary,
      @JsonKey(name: 'job_type') String? jobType,
      @JsonKey(name: 'deadline') String? deadline,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'apply_on') ApplyStyle? applyOn,
      @JsonKey(name: 'apply_email') String? applyEmail,
      @JsonKey(name: 'apply_url') String? applyUrl,
      @JsonKey(name: 'featured') bool? featured,
      @JsonKey(name: 'featured_until') String? featuredUntil,
      @JsonKey(name: 'highlight') bool? highlight,
      @JsonKey(name: 'highlight_until') String? highlightUntil,
      @JsonKey(name: 'is_remote') int? isRemote,
      @JsonKey(name: 'bookmarked') bool? bookmarked,
      @JsonKey(name: 'applied') bool? applied,
      @JsonKey(name: 'days_remaining') String? daysRemaining,
      @JsonKey(name: 'deadline_active') bool? deadlineActive,
      @JsonKey(name: 'posted_at') String? postedAt,
      @JsonKey(name: 'can_apply') bool? canApply,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'benefits') List<String>? benefits,
      @JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'experience') String? experience,
      @JsonKey(name: 'education') String? education,
      @JsonKey(name: 'company') Company? company});

  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$JobDetailsCopyWithImpl<$Res, $Val extends JobDetails>
    implements $JobDetailsCopyWith<$Res> {
  _$JobDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? vacancies = freezed,
    Object? salary = freezed,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? salaryMode = freezed,
    Object? customSalary = freezed,
    Object? jobType = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? applyOn = freezed,
    Object? applyEmail = freezed,
    Object? applyUrl = freezed,
    Object? featured = freezed,
    Object? featuredUntil = freezed,
    Object? highlight = freezed,
    Object? highlightUntil = freezed,
    Object? isRemote = freezed,
    Object? bookmarked = freezed,
    Object? applied = freezed,
    Object? daysRemaining = freezed,
    Object? deadlineActive = freezed,
    Object? postedAt = freezed,
    Object? canApply = freezed,
    Object? location = freezed,
    Object? benefits = freezed,
    Object? tags = freezed,
    Object? role = freezed,
    Object? experience = freezed,
    Object? education = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancies: freezed == vacancies
          ? _value.vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalary: freezed == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _value.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryMode: freezed == salaryMode
          ? _value.salaryMode
          : salaryMode // ignore: cast_nullable_to_non_nullable
              as String?,
      customSalary: freezed == customSalary
          ? _value.customSalary
          : customSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applyOn: freezed == applyOn
          ? _value.applyOn
          : applyOn // ignore: cast_nullable_to_non_nullable
              as ApplyStyle?,
      applyEmail: freezed == applyEmail
          ? _value.applyEmail
          : applyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      applyUrl: freezed == applyUrl
          ? _value.applyUrl
          : applyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      featuredUntil: freezed == featuredUntil
          ? _value.featuredUntil
          : featuredUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      highlight: freezed == highlight
          ? _value.highlight
          : highlight // ignore: cast_nullable_to_non_nullable
              as bool?,
      highlightUntil: freezed == highlightUntil
          ? _value.highlightUntil
          : highlightUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      isRemote: freezed == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarked: freezed == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineActive: freezed == deadlineActive
          ? _value.deadlineActive
          : deadlineActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      canApply: freezed == canApply
          ? _value.canApply
          : canApply // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      benefits: freezed == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobDetailsImplCopyWith<$Res>
    implements $JobDetailsCopyWith<$Res> {
  factory _$$JobDetailsImplCopyWith(
          _$JobDetailsImpl value, $Res Function(_$JobDetailsImpl) then) =
      __$$JobDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'vacancies') String? vacancies,
      @JsonKey(name: 'salary') String? salary,
      @JsonKey(name: 'min_salary') int? minSalary,
      @JsonKey(name: 'max_salary') int? maxSalary,
      @JsonKey(name: 'salary_mode') String? salaryMode,
      @JsonKey(name: 'custom_salary') String? customSalary,
      @JsonKey(name: 'job_type') String? jobType,
      @JsonKey(name: 'deadline') String? deadline,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'apply_on') ApplyStyle? applyOn,
      @JsonKey(name: 'apply_email') String? applyEmail,
      @JsonKey(name: 'apply_url') String? applyUrl,
      @JsonKey(name: 'featured') bool? featured,
      @JsonKey(name: 'featured_until') String? featuredUntil,
      @JsonKey(name: 'highlight') bool? highlight,
      @JsonKey(name: 'highlight_until') String? highlightUntil,
      @JsonKey(name: 'is_remote') int? isRemote,
      @JsonKey(name: 'bookmarked') bool? bookmarked,
      @JsonKey(name: 'applied') bool? applied,
      @JsonKey(name: 'days_remaining') String? daysRemaining,
      @JsonKey(name: 'deadline_active') bool? deadlineActive,
      @JsonKey(name: 'posted_at') String? postedAt,
      @JsonKey(name: 'can_apply') bool? canApply,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'benefits') List<String>? benefits,
      @JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'experience') String? experience,
      @JsonKey(name: 'education') String? education,
      @JsonKey(name: 'company') Company? company});

  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$JobDetailsImplCopyWithImpl<$Res>
    extends _$JobDetailsCopyWithImpl<$Res, _$JobDetailsImpl>
    implements _$$JobDetailsImplCopyWith<$Res> {
  __$$JobDetailsImplCopyWithImpl(
      _$JobDetailsImpl _value, $Res Function(_$JobDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? vacancies = freezed,
    Object? salary = freezed,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? salaryMode = freezed,
    Object? customSalary = freezed,
    Object? jobType = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? applyOn = freezed,
    Object? applyEmail = freezed,
    Object? applyUrl = freezed,
    Object? featured = freezed,
    Object? featuredUntil = freezed,
    Object? highlight = freezed,
    Object? highlightUntil = freezed,
    Object? isRemote = freezed,
    Object? bookmarked = freezed,
    Object? applied = freezed,
    Object? daysRemaining = freezed,
    Object? deadlineActive = freezed,
    Object? postedAt = freezed,
    Object? canApply = freezed,
    Object? location = freezed,
    Object? benefits = freezed,
    Object? tags = freezed,
    Object? role = freezed,
    Object? experience = freezed,
    Object? education = freezed,
    Object? company = freezed,
  }) {
    return _then(_$JobDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancies: freezed == vacancies
          ? _value.vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalary: freezed == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _value.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryMode: freezed == salaryMode
          ? _value.salaryMode
          : salaryMode // ignore: cast_nullable_to_non_nullable
              as String?,
      customSalary: freezed == customSalary
          ? _value.customSalary
          : customSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applyOn: freezed == applyOn
          ? _value.applyOn
          : applyOn // ignore: cast_nullable_to_non_nullable
              as ApplyStyle?,
      applyEmail: freezed == applyEmail
          ? _value.applyEmail
          : applyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      applyUrl: freezed == applyUrl
          ? _value.applyUrl
          : applyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      featuredUntil: freezed == featuredUntil
          ? _value.featuredUntil
          : featuredUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      highlight: freezed == highlight
          ? _value.highlight
          : highlight // ignore: cast_nullable_to_non_nullable
              as bool?,
      highlightUntil: freezed == highlightUntil
          ? _value.highlightUntil
          : highlightUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      isRemote: freezed == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarked: freezed == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineActive: freezed == deadlineActive
          ? _value.deadlineActive
          : deadlineActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      canApply: freezed == canApply
          ? _value.canApply
          : canApply // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      benefits: freezed == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDetailsImpl extends _JobDetails with DiagnosticableTreeMixin {
  const _$JobDetailsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'vacancies') this.vacancies,
      @JsonKey(name: 'salary') this.salary,
      @JsonKey(name: 'min_salary') this.minSalary,
      @JsonKey(name: 'max_salary') this.maxSalary,
      @JsonKey(name: 'salary_mode') this.salaryMode,
      @JsonKey(name: 'custom_salary') this.customSalary,
      @JsonKey(name: 'job_type') this.jobType,
      @JsonKey(name: 'deadline') this.deadline,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'apply_on') this.applyOn,
      @JsonKey(name: 'apply_email') this.applyEmail,
      @JsonKey(name: 'apply_url') this.applyUrl,
      @JsonKey(name: 'featured') this.featured,
      @JsonKey(name: 'featured_until') this.featuredUntil,
      @JsonKey(name: 'highlight') this.highlight,
      @JsonKey(name: 'highlight_until') this.highlightUntil,
      @JsonKey(name: 'is_remote') this.isRemote,
      @JsonKey(name: 'bookmarked') this.bookmarked,
      @JsonKey(name: 'applied') this.applied,
      @JsonKey(name: 'days_remaining') this.daysRemaining,
      @JsonKey(name: 'deadline_active') this.deadlineActive,
      @JsonKey(name: 'posted_at') this.postedAt,
      @JsonKey(name: 'can_apply') this.canApply,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'benefits') final List<String>? benefits,
      @JsonKey(name: 'tags') final List<String>? tags,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'experience') this.experience,
      @JsonKey(name: 'education') this.education,
      @JsonKey(name: 'company') this.company})
      : _benefits = benefits,
        _tags = tags,
        super._();

  factory _$JobDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'vacancies')
  final String? vacancies;
  @override
  @JsonKey(name: 'salary')
  final String? salary;
  @override
  @JsonKey(name: 'min_salary')
  final int? minSalary;
  @override
  @JsonKey(name: 'max_salary')
  final int? maxSalary;
  @override
  @JsonKey(name: 'salary_mode')
  final String? salaryMode;
  @override
  @JsonKey(name: 'custom_salary')
  final String? customSalary;
  @override
  @JsonKey(name: 'job_type')
  final String? jobType;
  @override
  @JsonKey(name: 'deadline')
  final String? deadline;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'apply_on')
  final ApplyStyle? applyOn;
  @override
  @JsonKey(name: 'apply_email')
  final String? applyEmail;
  @override
  @JsonKey(name: 'apply_url')
  final String? applyUrl;
  @override
  @JsonKey(name: 'featured')
  final bool? featured;
  @override
  @JsonKey(name: 'featured_until')
  final String? featuredUntil;
  @override
  @JsonKey(name: 'highlight')
  final bool? highlight;
  @override
  @JsonKey(name: 'highlight_until')
  final String? highlightUntil;
  @override
  @JsonKey(name: 'is_remote')
  final int? isRemote;
  @override
  @JsonKey(name: 'bookmarked')
  final bool? bookmarked;
  @override
  @JsonKey(name: 'applied')
  final bool? applied;
  @override
  @JsonKey(name: 'days_remaining')
  final String? daysRemaining;
  @override
  @JsonKey(name: 'deadline_active')
  final bool? deadlineActive;
  @override
  @JsonKey(name: 'posted_at')
  final String? postedAt;
  @override
  @JsonKey(name: 'can_apply')
  final bool? canApply;
  @override
  @JsonKey(name: 'location')
  final String? location;
  final List<String>? _benefits;
  @override
  @JsonKey(name: 'benefits')
  List<String>? get benefits {
    final value = _benefits;
    if (value == null) return null;
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'experience')
  final String? experience;
  @override
  @JsonKey(name: 'education')
  final String? education;
  @override
  @JsonKey(name: 'company')
  final Company? company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobDetails(id: $id, title: $title, slug: $slug, vacancies: $vacancies, salary: $salary, minSalary: $minSalary, maxSalary: $maxSalary, salaryMode: $salaryMode, customSalary: $customSalary, jobType: $jobType, deadline: $deadline, description: $description, status: $status, applyOn: $applyOn, applyEmail: $applyEmail, applyUrl: $applyUrl, featured: $featured, featuredUntil: $featuredUntil, highlight: $highlight, highlightUntil: $highlightUntil, isRemote: $isRemote, bookmarked: $bookmarked, applied: $applied, daysRemaining: $daysRemaining, deadlineActive: $deadlineActive, postedAt: $postedAt, canApply: $canApply, location: $location, benefits: $benefits, tags: $tags, role: $role, experience: $experience, education: $education, company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobDetails'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('vacancies', vacancies))
      ..add(DiagnosticsProperty('salary', salary))
      ..add(DiagnosticsProperty('minSalary', minSalary))
      ..add(DiagnosticsProperty('maxSalary', maxSalary))
      ..add(DiagnosticsProperty('salaryMode', salaryMode))
      ..add(DiagnosticsProperty('customSalary', customSalary))
      ..add(DiagnosticsProperty('jobType', jobType))
      ..add(DiagnosticsProperty('deadline', deadline))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('applyOn', applyOn))
      ..add(DiagnosticsProperty('applyEmail', applyEmail))
      ..add(DiagnosticsProperty('applyUrl', applyUrl))
      ..add(DiagnosticsProperty('featured', featured))
      ..add(DiagnosticsProperty('featuredUntil', featuredUntil))
      ..add(DiagnosticsProperty('highlight', highlight))
      ..add(DiagnosticsProperty('highlightUntil', highlightUntil))
      ..add(DiagnosticsProperty('isRemote', isRemote))
      ..add(DiagnosticsProperty('bookmarked', bookmarked))
      ..add(DiagnosticsProperty('applied', applied))
      ..add(DiagnosticsProperty('daysRemaining', daysRemaining))
      ..add(DiagnosticsProperty('deadlineActive', deadlineActive))
      ..add(DiagnosticsProperty('postedAt', postedAt))
      ..add(DiagnosticsProperty('canApply', canApply))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('benefits', benefits))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('experience', experience))
      ..add(DiagnosticsProperty('education', education))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.vacancies, vacancies) ||
                other.vacancies == vacancies) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
            (identical(other.salaryMode, salaryMode) ||
                other.salaryMode == salaryMode) &&
            (identical(other.customSalary, customSalary) ||
                other.customSalary == customSalary) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.applyOn, applyOn) || other.applyOn == applyOn) &&
            (identical(other.applyEmail, applyEmail) ||
                other.applyEmail == applyEmail) &&
            (identical(other.applyUrl, applyUrl) ||
                other.applyUrl == applyUrl) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.featuredUntil, featuredUntil) ||
                other.featuredUntil == featuredUntil) &&
            (identical(other.highlight, highlight) ||
                other.highlight == highlight) &&
            (identical(other.highlightUntil, highlightUntil) ||
                other.highlightUntil == highlightUntil) &&
            (identical(other.isRemote, isRemote) ||
                other.isRemote == isRemote) &&
            (identical(other.bookmarked, bookmarked) ||
                other.bookmarked == bookmarked) &&
            (identical(other.applied, applied) || other.applied == applied) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.deadlineActive, deadlineActive) ||
                other.deadlineActive == deadlineActive) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.canApply, canApply) ||
                other.canApply == canApply) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        slug,
        vacancies,
        salary,
        minSalary,
        maxSalary,
        salaryMode,
        customSalary,
        jobType,
        deadline,
        description,
        status,
        applyOn,
        applyEmail,
        applyUrl,
        featured,
        featuredUntil,
        highlight,
        highlightUntil,
        isRemote,
        bookmarked,
        applied,
        daysRemaining,
        deadlineActive,
        postedAt,
        canApply,
        location,
        const DeepCollectionEquality().hash(_benefits),
        const DeepCollectionEquality().hash(_tags),
        role,
        experience,
        education,
        company
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsImplCopyWith<_$JobDetailsImpl> get copyWith =>
      __$$JobDetailsImplCopyWithImpl<_$JobDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDetailsImplToJson(
      this,
    );
  }
}

abstract class _JobDetails extends JobDetails {
  const factory _JobDetails(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'vacancies') final String? vacancies,
      @JsonKey(name: 'salary') final String? salary,
      @JsonKey(name: 'min_salary') final int? minSalary,
      @JsonKey(name: 'max_salary') final int? maxSalary,
      @JsonKey(name: 'salary_mode') final String? salaryMode,
      @JsonKey(name: 'custom_salary') final String? customSalary,
      @JsonKey(name: 'job_type') final String? jobType,
      @JsonKey(name: 'deadline') final String? deadline,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'apply_on') final ApplyStyle? applyOn,
      @JsonKey(name: 'apply_email') final String? applyEmail,
      @JsonKey(name: 'apply_url') final String? applyUrl,
      @JsonKey(name: 'featured') final bool? featured,
      @JsonKey(name: 'featured_until') final String? featuredUntil,
      @JsonKey(name: 'highlight') final bool? highlight,
      @JsonKey(name: 'highlight_until') final String? highlightUntil,
      @JsonKey(name: 'is_remote') final int? isRemote,
      @JsonKey(name: 'bookmarked') final bool? bookmarked,
      @JsonKey(name: 'applied') final bool? applied,
      @JsonKey(name: 'days_remaining') final String? daysRemaining,
      @JsonKey(name: 'deadline_active') final bool? deadlineActive,
      @JsonKey(name: 'posted_at') final String? postedAt,
      @JsonKey(name: 'can_apply') final bool? canApply,
      @JsonKey(name: 'location') final String? location,
      @JsonKey(name: 'benefits') final List<String>? benefits,
      @JsonKey(name: 'tags') final List<String>? tags,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'experience') final String? experience,
      @JsonKey(name: 'education') final String? education,
      @JsonKey(name: 'company') final Company? company}) = _$JobDetailsImpl;
  const _JobDetails._() : super._();

  factory _JobDetails.fromJson(Map<String, dynamic> json) =
      _$JobDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'vacancies')
  String? get vacancies;
  @override
  @JsonKey(name: 'salary')
  String? get salary;
  @override
  @JsonKey(name: 'min_salary')
  int? get minSalary;
  @override
  @JsonKey(name: 'max_salary')
  int? get maxSalary;
  @override
  @JsonKey(name: 'salary_mode')
  String? get salaryMode;
  @override
  @JsonKey(name: 'custom_salary')
  String? get customSalary;
  @override
  @JsonKey(name: 'job_type')
  String? get jobType;
  @override
  @JsonKey(name: 'deadline')
  String? get deadline;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'apply_on')
  ApplyStyle? get applyOn;
  @override
  @JsonKey(name: 'apply_email')
  String? get applyEmail;
  @override
  @JsonKey(name: 'apply_url')
  String? get applyUrl;
  @override
  @JsonKey(name: 'featured')
  bool? get featured;
  @override
  @JsonKey(name: 'featured_until')
  String? get featuredUntil;
  @override
  @JsonKey(name: 'highlight')
  bool? get highlight;
  @override
  @JsonKey(name: 'highlight_until')
  String? get highlightUntil;
  @override
  @JsonKey(name: 'is_remote')
  int? get isRemote;
  @override
  @JsonKey(name: 'bookmarked')
  bool? get bookmarked;
  @override
  @JsonKey(name: 'applied')
  bool? get applied;
  @override
  @JsonKey(name: 'days_remaining')
  String? get daysRemaining;
  @override
  @JsonKey(name: 'deadline_active')
  bool? get deadlineActive;
  @override
  @JsonKey(name: 'posted_at')
  String? get postedAt;
  @override
  @JsonKey(name: 'can_apply')
  bool? get canApply;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'benefits')
  List<String>? get benefits;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'experience')
  String? get experience;
  @override
  @JsonKey(name: 'education')
  String? get education;
  @override
  @JsonKey(name: 'company')
  Company? get company;
  @override
  @JsonKey(ignore: true)
  _$$JobDetailsImplCopyWith<_$JobDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
