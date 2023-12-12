// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_open_positions_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedOpenPositionsData _$PaginatedOpenPositionsDataFromJson(
    Map<String, dynamic> json) {
  return _PaginatedOpenPositionsData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedOpenPositionsData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<OpenJob>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  int? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedOpenPositionsDataCopyWith<PaginatedOpenPositionsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedOpenPositionsDataCopyWith<$Res> {
  factory $PaginatedOpenPositionsDataCopyWith(PaginatedOpenPositionsData value,
          $Res Function(PaginatedOpenPositionsData) then) =
      _$PaginatedOpenPositionsDataCopyWithImpl<$Res,
          PaginatedOpenPositionsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<OpenJob>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      @JsonKey(name: 'to') int? to});
}

/// @nodoc
class _$PaginatedOpenPositionsDataCopyWithImpl<$Res,
        $Val extends PaginatedOpenPositionsData>
    implements $PaginatedOpenPositionsDataCopyWith<$Res> {
  _$PaginatedOpenPositionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OpenJob>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedOpenPositionsDataImplCopyWith<$Res>
    implements $PaginatedOpenPositionsDataCopyWith<$Res> {
  factory _$$PaginatedOpenPositionsDataImplCopyWith(
          _$PaginatedOpenPositionsDataImpl value,
          $Res Function(_$PaginatedOpenPositionsDataImpl) then) =
      __$$PaginatedOpenPositionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<OpenJob>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      @JsonKey(name: 'to') int? to});
}

/// @nodoc
class __$$PaginatedOpenPositionsDataImplCopyWithImpl<$Res>
    extends _$PaginatedOpenPositionsDataCopyWithImpl<$Res,
        _$PaginatedOpenPositionsDataImpl>
    implements _$$PaginatedOpenPositionsDataImplCopyWith<$Res> {
  __$$PaginatedOpenPositionsDataImplCopyWithImpl(
      _$PaginatedOpenPositionsDataImpl _value,
      $Res Function(_$PaginatedOpenPositionsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
  }) {
    return _then(_$PaginatedOpenPositionsDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OpenJob>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedOpenPositionsDataImpl
    with DiagnosticableTreeMixin
    implements _PaginatedOpenPositionsData {
  const _$PaginatedOpenPositionsDataImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') final List<OpenJob>? data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      @JsonKey(name: 'to') this.to})
      : _data = data;

  factory _$PaginatedOpenPositionsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaginatedOpenPositionsDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<OpenJob>? _data;
  @override
  @JsonKey(name: 'data')
  List<OpenJob>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  @JsonKey(name: 'from')
  final int? from;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  @JsonKey(name: 'to')
  final int? to;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedOpenPositionsData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedOpenPositionsData'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedOpenPositionsDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedOpenPositionsDataImplCopyWith<_$PaginatedOpenPositionsDataImpl>
      get copyWith => __$$PaginatedOpenPositionsDataImplCopyWithImpl<
          _$PaginatedOpenPositionsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedOpenPositionsDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedOpenPositionsData
    implements PaginatedOpenPositionsData {
  const factory _PaginatedOpenPositionsData(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'data') final List<OpenJob>? data,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      @JsonKey(name: 'from') final int? from,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      @JsonKey(name: 'to') final int? to}) = _$PaginatedOpenPositionsDataImpl;

  factory _PaginatedOpenPositionsData.fromJson(Map<String, dynamic> json) =
      _$PaginatedOpenPositionsDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'data')
  List<OpenJob>? get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'from')
  int? get from;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  @JsonKey(name: 'to')
  int? get to;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedOpenPositionsDataImplCopyWith<_$PaginatedOpenPositionsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenJob _$OpenJobFromJson(Map<String, dynamic> json) {
  return _OpenJob.fromJson(json);
}

/// @nodoc
mixin _$OpenJob {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  int? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_id')
  int? get experienceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_id')
  int? get educationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type_id')
  int? get jobTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_type_id')
  int? get salaryTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'vacancies')
  String? get vacancies => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_salary')
  int? get minSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_salary')
  int? get maxSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline')
  String? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_on')
  String? get applyOn => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'total_views')
  int? get totalViews => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'exact_location')
  String? get exactLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'neighborhood')
  String? get neighborhood => throw _privateConstructorUsedError;
  @JsonKey(name: 'locality')
  String? get locality => throw _privateConstructorUsedError;
  @JsonKey(name: 'place')
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcode')
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'long')
  String? get long => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  String? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_job_id')
  String? get parentJobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_for_edit_approval')
  int? get waitingForEditApproval => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_mode')
  String? get salaryMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_salary')
  String? get customSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_remaining')
  String? get daysRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline_active')
  bool? get deadlineActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_apply')
  bool? get canApply => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address')
  String? get fullAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'company')
  Company? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type')
  JobType? get jobType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenJobCopyWith<OpenJob> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenJobCopyWith<$Res> {
  factory $OpenJobCopyWith(OpenJob value, $Res Function(OpenJob) then) =
      _$OpenJobCopyWithImpl<$Res, OpenJob>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'role_id') int? roleId,
      @JsonKey(name: 'experience_id') int? experienceId,
      @JsonKey(name: 'education_id') int? educationId,
      @JsonKey(name: 'job_type_id') int? jobTypeId,
      @JsonKey(name: 'salary_type_id') int? salaryTypeId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'vacancies') String? vacancies,
      @JsonKey(name: 'min_salary') int? minSalary,
      @JsonKey(name: 'max_salary') int? maxSalary,
      @JsonKey(name: 'deadline') String? deadline,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'apply_on') String? applyOn,
      @JsonKey(name: 'apply_email') String? applyEmail,
      @JsonKey(name: 'apply_url') String? applyUrl,
      @JsonKey(name: 'featured') bool? featured,
      @JsonKey(name: 'featured_until') String? featuredUntil,
      @JsonKey(name: 'highlight') bool? highlight,
      @JsonKey(name: 'highlight_until') String? highlightUntil,
      @JsonKey(name: 'is_remote') int? isRemote,
      @JsonKey(name: 'total_views') int? totalViews,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'exact_location') String? exactLocation,
      @JsonKey(name: 'neighborhood') String? neighborhood,
      @JsonKey(name: 'locality') String? locality,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'postcode') String? postcode,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'long') String? long,
      @JsonKey(name: 'lat') String? lat,
      @JsonKey(name: 'parent_job_id') String? parentJobId,
      @JsonKey(name: 'waiting_for_edit_approval') int? waitingForEditApproval,
      @JsonKey(name: 'salary_mode') String? salaryMode,
      @JsonKey(name: 'custom_salary') String? customSalary,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'days_remaining') String? daysRemaining,
      @JsonKey(name: 'deadline_active') bool? deadlineActive,
      @JsonKey(name: 'can_apply') bool? canApply,
      @JsonKey(name: 'full_address') String? fullAddress,
      @JsonKey(name: 'company') Company? company,
      @JsonKey(name: 'job_type') JobType? jobType});

  $CompanyCopyWith<$Res>? get company;
  $JobTypeCopyWith<$Res>? get jobType;
}

/// @nodoc
class _$OpenJobCopyWithImpl<$Res, $Val extends OpenJob>
    implements $OpenJobCopyWith<$Res> {
  _$OpenJobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyId = freezed,
    Object? categoryId = freezed,
    Object? roleId = freezed,
    Object? experienceId = freezed,
    Object? educationId = freezed,
    Object? jobTypeId = freezed,
    Object? salaryTypeId = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? vacancies = freezed,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
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
    Object? totalViews = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? exactLocation = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? parentJobId = freezed,
    Object? waitingForEditApproval = freezed,
    Object? salaryMode = freezed,
    Object? customSalary = freezed,
    Object? companyName = freezed,
    Object? daysRemaining = freezed,
    Object? deadlineActive = freezed,
    Object? canApply = freezed,
    Object? fullAddress = freezed,
    Object? company = freezed,
    Object? jobType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceId: freezed == experienceId
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as int?,
      educationId: freezed == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTypeId: freezed == jobTypeId
          ? _value.jobTypeId
          : jobTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryTypeId: freezed == salaryTypeId
          ? _value.salaryTypeId
          : salaryTypeId // ignore: cast_nullable_to_non_nullable
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
      minSalary: freezed == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _value.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
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
      totalViews: freezed == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      exactLocation: freezed == exactLocation
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      parentJobId: freezed == parentJobId
          ? _value.parentJobId
          : parentJobId // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingForEditApproval: freezed == waitingForEditApproval
          ? _value.waitingForEditApproval
          : waitingForEditApproval // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryMode: freezed == salaryMode
          ? _value.salaryMode
          : salaryMode // ignore: cast_nullable_to_non_nullable
              as String?,
      customSalary: freezed == customSalary
          ? _value.customSalary
          : customSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineActive: freezed == deadlineActive
          ? _value.deadlineActive
          : deadlineActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      canApply: freezed == canApply
          ? _value.canApply
          : canApply // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as JobType?,
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

  @override
  @pragma('vm:prefer-inline')
  $JobTypeCopyWith<$Res>? get jobType {
    if (_value.jobType == null) {
      return null;
    }

    return $JobTypeCopyWith<$Res>(_value.jobType!, (value) {
      return _then(_value.copyWith(jobType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenJobImplCopyWith<$Res> implements $OpenJobCopyWith<$Res> {
  factory _$$OpenJobImplCopyWith(
          _$OpenJobImpl value, $Res Function(_$OpenJobImpl) then) =
      __$$OpenJobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'role_id') int? roleId,
      @JsonKey(name: 'experience_id') int? experienceId,
      @JsonKey(name: 'education_id') int? educationId,
      @JsonKey(name: 'job_type_id') int? jobTypeId,
      @JsonKey(name: 'salary_type_id') int? salaryTypeId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'vacancies') String? vacancies,
      @JsonKey(name: 'min_salary') int? minSalary,
      @JsonKey(name: 'max_salary') int? maxSalary,
      @JsonKey(name: 'deadline') String? deadline,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'apply_on') String? applyOn,
      @JsonKey(name: 'apply_email') String? applyEmail,
      @JsonKey(name: 'apply_url') String? applyUrl,
      @JsonKey(name: 'featured') bool? featured,
      @JsonKey(name: 'featured_until') String? featuredUntil,
      @JsonKey(name: 'highlight') bool? highlight,
      @JsonKey(name: 'highlight_until') String? highlightUntil,
      @JsonKey(name: 'is_remote') int? isRemote,
      @JsonKey(name: 'total_views') int? totalViews,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'exact_location') String? exactLocation,
      @JsonKey(name: 'neighborhood') String? neighborhood,
      @JsonKey(name: 'locality') String? locality,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'postcode') String? postcode,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'long') String? long,
      @JsonKey(name: 'lat') String? lat,
      @JsonKey(name: 'parent_job_id') String? parentJobId,
      @JsonKey(name: 'waiting_for_edit_approval') int? waitingForEditApproval,
      @JsonKey(name: 'salary_mode') String? salaryMode,
      @JsonKey(name: 'custom_salary') String? customSalary,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'days_remaining') String? daysRemaining,
      @JsonKey(name: 'deadline_active') bool? deadlineActive,
      @JsonKey(name: 'can_apply') bool? canApply,
      @JsonKey(name: 'full_address') String? fullAddress,
      @JsonKey(name: 'company') Company? company,
      @JsonKey(name: 'job_type') JobType? jobType});

  @override
  $CompanyCopyWith<$Res>? get company;
  @override
  $JobTypeCopyWith<$Res>? get jobType;
}

/// @nodoc
class __$$OpenJobImplCopyWithImpl<$Res>
    extends _$OpenJobCopyWithImpl<$Res, _$OpenJobImpl>
    implements _$$OpenJobImplCopyWith<$Res> {
  __$$OpenJobImplCopyWithImpl(
      _$OpenJobImpl _value, $Res Function(_$OpenJobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyId = freezed,
    Object? categoryId = freezed,
    Object? roleId = freezed,
    Object? experienceId = freezed,
    Object? educationId = freezed,
    Object? jobTypeId = freezed,
    Object? salaryTypeId = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? vacancies = freezed,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
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
    Object? totalViews = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? exactLocation = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? parentJobId = freezed,
    Object? waitingForEditApproval = freezed,
    Object? salaryMode = freezed,
    Object? customSalary = freezed,
    Object? companyName = freezed,
    Object? daysRemaining = freezed,
    Object? deadlineActive = freezed,
    Object? canApply = freezed,
    Object? fullAddress = freezed,
    Object? company = freezed,
    Object? jobType = freezed,
  }) {
    return _then(_$OpenJobImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceId: freezed == experienceId
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as int?,
      educationId: freezed == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTypeId: freezed == jobTypeId
          ? _value.jobTypeId
          : jobTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryTypeId: freezed == salaryTypeId
          ? _value.salaryTypeId
          : salaryTypeId // ignore: cast_nullable_to_non_nullable
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
      minSalary: freezed == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _value.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
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
      totalViews: freezed == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      exactLocation: freezed == exactLocation
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      parentJobId: freezed == parentJobId
          ? _value.parentJobId
          : parentJobId // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingForEditApproval: freezed == waitingForEditApproval
          ? _value.waitingForEditApproval
          : waitingForEditApproval // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryMode: freezed == salaryMode
          ? _value.salaryMode
          : salaryMode // ignore: cast_nullable_to_non_nullable
              as String?,
      customSalary: freezed == customSalary
          ? _value.customSalary
          : customSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineActive: freezed == deadlineActive
          ? _value.deadlineActive
          : deadlineActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      canApply: freezed == canApply
          ? _value.canApply
          : canApply // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as JobType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenJobImpl with DiagnosticableTreeMixin implements _OpenJob {
  const _$OpenJobImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'company_id') this.companyId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'role_id') this.roleId,
      @JsonKey(name: 'experience_id') this.experienceId,
      @JsonKey(name: 'education_id') this.educationId,
      @JsonKey(name: 'job_type_id') this.jobTypeId,
      @JsonKey(name: 'salary_type_id') this.salaryTypeId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'vacancies') this.vacancies,
      @JsonKey(name: 'min_salary') this.minSalary,
      @JsonKey(name: 'max_salary') this.maxSalary,
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
      @JsonKey(name: 'total_views') this.totalViews,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'exact_location') this.exactLocation,
      @JsonKey(name: 'neighborhood') this.neighborhood,
      @JsonKey(name: 'locality') this.locality,
      @JsonKey(name: 'place') this.place,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'postcode') this.postcode,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'long') this.long,
      @JsonKey(name: 'lat') this.lat,
      @JsonKey(name: 'parent_job_id') this.parentJobId,
      @JsonKey(name: 'waiting_for_edit_approval') this.waitingForEditApproval,
      @JsonKey(name: 'salary_mode') this.salaryMode,
      @JsonKey(name: 'custom_salary') this.customSalary,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'days_remaining') this.daysRemaining,
      @JsonKey(name: 'deadline_active') this.deadlineActive,
      @JsonKey(name: 'can_apply') this.canApply,
      @JsonKey(name: 'full_address') this.fullAddress,
      @JsonKey(name: 'company') this.company,
      @JsonKey(name: 'job_type') this.jobType});

  factory _$OpenJobImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenJobImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'role_id')
  final int? roleId;
  @override
  @JsonKey(name: 'experience_id')
  final int? experienceId;
  @override
  @JsonKey(name: 'education_id')
  final int? educationId;
  @override
  @JsonKey(name: 'job_type_id')
  final int? jobTypeId;
  @override
  @JsonKey(name: 'salary_type_id')
  final int? salaryTypeId;
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
  @JsonKey(name: 'min_salary')
  final int? minSalary;
  @override
  @JsonKey(name: 'max_salary')
  final int? maxSalary;
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
  final String? applyOn;
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
  @JsonKey(name: 'total_views')
  final int? totalViews;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'exact_location')
  final String? exactLocation;
  @override
  @JsonKey(name: 'neighborhood')
  final String? neighborhood;
  @override
  @JsonKey(name: 'locality')
  final String? locality;
  @override
  @JsonKey(name: 'place')
  final String? place;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'postcode')
  final String? postcode;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'long')
  final String? long;
  @override
  @JsonKey(name: 'lat')
  final String? lat;
  @override
  @JsonKey(name: 'parent_job_id')
  final String? parentJobId;
  @override
  @JsonKey(name: 'waiting_for_edit_approval')
  final int? waitingForEditApproval;
  @override
  @JsonKey(name: 'salary_mode')
  final String? salaryMode;
  @override
  @JsonKey(name: 'custom_salary')
  final String? customSalary;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'days_remaining')
  final String? daysRemaining;
  @override
  @JsonKey(name: 'deadline_active')
  final bool? deadlineActive;
  @override
  @JsonKey(name: 'can_apply')
  final bool? canApply;
  @override
  @JsonKey(name: 'full_address')
  final String? fullAddress;
  @override
  @JsonKey(name: 'company')
  final Company? company;
  @override
  @JsonKey(name: 'job_type')
  final JobType? jobType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenJob(id: $id, companyId: $companyId, categoryId: $categoryId, roleId: $roleId, experienceId: $experienceId, educationId: $educationId, jobTypeId: $jobTypeId, salaryTypeId: $salaryTypeId, title: $title, slug: $slug, vacancies: $vacancies, minSalary: $minSalary, maxSalary: $maxSalary, deadline: $deadline, description: $description, status: $status, applyOn: $applyOn, applyEmail: $applyEmail, applyUrl: $applyUrl, featured: $featured, featuredUntil: $featuredUntil, highlight: $highlight, highlightUntil: $highlightUntil, isRemote: $isRemote, totalViews: $totalViews, createdAt: $createdAt, updatedAt: $updatedAt, address: $address, exactLocation: $exactLocation, neighborhood: $neighborhood, locality: $locality, place: $place, district: $district, postcode: $postcode, region: $region, country: $country, long: $long, lat: $lat, parentJobId: $parentJobId, waitingForEditApproval: $waitingForEditApproval, salaryMode: $salaryMode, customSalary: $customSalary, companyName: $companyName, daysRemaining: $daysRemaining, deadlineActive: $deadlineActive, canApply: $canApply, fullAddress: $fullAddress, company: $company, jobType: $jobType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenJob'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('roleId', roleId))
      ..add(DiagnosticsProperty('experienceId', experienceId))
      ..add(DiagnosticsProperty('educationId', educationId))
      ..add(DiagnosticsProperty('jobTypeId', jobTypeId))
      ..add(DiagnosticsProperty('salaryTypeId', salaryTypeId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('vacancies', vacancies))
      ..add(DiagnosticsProperty('minSalary', minSalary))
      ..add(DiagnosticsProperty('maxSalary', maxSalary))
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
      ..add(DiagnosticsProperty('totalViews', totalViews))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('exactLocation', exactLocation))
      ..add(DiagnosticsProperty('neighborhood', neighborhood))
      ..add(DiagnosticsProperty('locality', locality))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('district', district))
      ..add(DiagnosticsProperty('postcode', postcode))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('long', long))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('parentJobId', parentJobId))
      ..add(
          DiagnosticsProperty('waitingForEditApproval', waitingForEditApproval))
      ..add(DiagnosticsProperty('salaryMode', salaryMode))
      ..add(DiagnosticsProperty('customSalary', customSalary))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('daysRemaining', daysRemaining))
      ..add(DiagnosticsProperty('deadlineActive', deadlineActive))
      ..add(DiagnosticsProperty('canApply', canApply))
      ..add(DiagnosticsProperty('fullAddress', fullAddress))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('jobType', jobType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenJobImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.experienceId, experienceId) ||
                other.experienceId == experienceId) &&
            (identical(other.educationId, educationId) ||
                other.educationId == educationId) &&
            (identical(other.jobTypeId, jobTypeId) ||
                other.jobTypeId == jobTypeId) &&
            (identical(other.salaryTypeId, salaryTypeId) ||
                other.salaryTypeId == salaryTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.vacancies, vacancies) ||
                other.vacancies == vacancies) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
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
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.exactLocation, exactLocation) ||
                other.exactLocation == exactLocation) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.parentJobId, parentJobId) ||
                other.parentJobId == parentJobId) &&
            (identical(other.waitingForEditApproval, waitingForEditApproval) ||
                other.waitingForEditApproval == waitingForEditApproval) &&
            (identical(other.salaryMode, salaryMode) ||
                other.salaryMode == salaryMode) &&
            (identical(other.customSalary, customSalary) ||
                other.customSalary == customSalary) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.deadlineActive, deadlineActive) ||
                other.deadlineActive == deadlineActive) &&
            (identical(other.canApply, canApply) ||
                other.canApply == canApply) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.jobType, jobType) || other.jobType == jobType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        companyId,
        categoryId,
        roleId,
        experienceId,
        educationId,
        jobTypeId,
        salaryTypeId,
        title,
        slug,
        vacancies,
        minSalary,
        maxSalary,
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
        totalViews,
        createdAt,
        updatedAt,
        address,
        exactLocation,
        neighborhood,
        locality,
        place,
        district,
        postcode,
        region,
        country,
        long,
        lat,
        parentJobId,
        waitingForEditApproval,
        salaryMode,
        customSalary,
        companyName,
        daysRemaining,
        deadlineActive,
        canApply,
        fullAddress,
        company,
        jobType
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenJobImplCopyWith<_$OpenJobImpl> get copyWith =>
      __$$OpenJobImplCopyWithImpl<_$OpenJobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenJobImplToJson(
      this,
    );
  }
}

abstract class _OpenJob implements OpenJob {
  const factory _OpenJob(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'company_id') final int? companyId,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'role_id') final int? roleId,
      @JsonKey(name: 'experience_id') final int? experienceId,
      @JsonKey(name: 'education_id') final int? educationId,
      @JsonKey(name: 'job_type_id') final int? jobTypeId,
      @JsonKey(name: 'salary_type_id') final int? salaryTypeId,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'vacancies') final String? vacancies,
      @JsonKey(name: 'min_salary') final int? minSalary,
      @JsonKey(name: 'max_salary') final int? maxSalary,
      @JsonKey(name: 'deadline') final String? deadline,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'apply_on') final String? applyOn,
      @JsonKey(name: 'apply_email') final String? applyEmail,
      @JsonKey(name: 'apply_url') final String? applyUrl,
      @JsonKey(name: 'featured') final bool? featured,
      @JsonKey(name: 'featured_until') final String? featuredUntil,
      @JsonKey(name: 'highlight') final bool? highlight,
      @JsonKey(name: 'highlight_until') final String? highlightUntil,
      @JsonKey(name: 'is_remote') final int? isRemote,
      @JsonKey(name: 'total_views') final int? totalViews,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'exact_location') final String? exactLocation,
      @JsonKey(name: 'neighborhood') final String? neighborhood,
      @JsonKey(name: 'locality') final String? locality,
      @JsonKey(name: 'place') final String? place,
      @JsonKey(name: 'district') final String? district,
      @JsonKey(name: 'postcode') final String? postcode,
      @JsonKey(name: 'region') final String? region,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'long') final String? long,
      @JsonKey(name: 'lat') final String? lat,
      @JsonKey(name: 'parent_job_id') final String? parentJobId,
      @JsonKey(name: 'waiting_for_edit_approval')
      final int? waitingForEditApproval,
      @JsonKey(name: 'salary_mode') final String? salaryMode,
      @JsonKey(name: 'custom_salary') final String? customSalary,
      @JsonKey(name: 'company_name') final String? companyName,
      @JsonKey(name: 'days_remaining') final String? daysRemaining,
      @JsonKey(name: 'deadline_active') final bool? deadlineActive,
      @JsonKey(name: 'can_apply') final bool? canApply,
      @JsonKey(name: 'full_address') final String? fullAddress,
      @JsonKey(name: 'company') final Company? company,
      @JsonKey(name: 'job_type') final JobType? jobType}) = _$OpenJobImpl;

  factory _OpenJob.fromJson(Map<String, dynamic> json) = _$OpenJobImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'role_id')
  int? get roleId;
  @override
  @JsonKey(name: 'experience_id')
  int? get experienceId;
  @override
  @JsonKey(name: 'education_id')
  int? get educationId;
  @override
  @JsonKey(name: 'job_type_id')
  int? get jobTypeId;
  @override
  @JsonKey(name: 'salary_type_id')
  int? get salaryTypeId;
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
  @JsonKey(name: 'min_salary')
  int? get minSalary;
  @override
  @JsonKey(name: 'max_salary')
  int? get maxSalary;
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
  String? get applyOn;
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
  @JsonKey(name: 'total_views')
  int? get totalViews;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'exact_location')
  String? get exactLocation;
  @override
  @JsonKey(name: 'neighborhood')
  String? get neighborhood;
  @override
  @JsonKey(name: 'locality')
  String? get locality;
  @override
  @JsonKey(name: 'place')
  String? get place;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'postcode')
  String? get postcode;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'long')
  String? get long;
  @override
  @JsonKey(name: 'lat')
  String? get lat;
  @override
  @JsonKey(name: 'parent_job_id')
  String? get parentJobId;
  @override
  @JsonKey(name: 'waiting_for_edit_approval')
  int? get waitingForEditApproval;
  @override
  @JsonKey(name: 'salary_mode')
  String? get salaryMode;
  @override
  @JsonKey(name: 'custom_salary')
  String? get customSalary;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'days_remaining')
  String? get daysRemaining;
  @override
  @JsonKey(name: 'deadline_active')
  bool? get deadlineActive;
  @override
  @JsonKey(name: 'can_apply')
  bool? get canApply;
  @override
  @JsonKey(name: 'full_address')
  String? get fullAddress;
  @override
  @JsonKey(name: 'company')
  Company? get company;
  @override
  @JsonKey(name: 'job_type')
  JobType? get jobType;
  @override
  @JsonKey(ignore: true)
  _$$OpenJobImplCopyWith<_$OpenJobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'industry_type_id')
  int? get industryTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_type_id')
  int? get organizationTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_size_id')
  int? get teamSizeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'establishment_date')
  String? get establishmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'website')
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_completion')
  bool? get profileCompletion => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'vision')
  String? get vision => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_views')
  int? get totalViews => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'exact_location')
  String? get exactLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'neighborhood')
  String? get neighborhood => throw _privateConstructorUsedError;
  @JsonKey(name: 'locality')
  String? get locality => throw _privateConstructorUsedError;
  @JsonKey(name: 'place')
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcode')
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'long')
  double? get long => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_profile_verified')
  bool? get isProfileVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_verified_at')
  String? get documentVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_feature_enable')
  int? get questionFeatureEnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_url')
  String? get bannerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address')
  String? get fullAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  CompanyUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'industry_type_id') int? industryTypeId,
      @JsonKey(name: 'organization_type_id') int? organizationTypeId,
      @JsonKey(name: 'team_size_id') int? teamSizeId,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'establishment_date') String? establishmentDate,
      @JsonKey(name: 'website') String? website,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'profile_completion') bool? profileCompletion,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'vision') String? vision,
      @JsonKey(name: 'total_views') int? totalViews,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'exact_location') String? exactLocation,
      @JsonKey(name: 'neighborhood') String? neighborhood,
      @JsonKey(name: 'locality') String? locality,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'postcode') String? postcode,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'long') double? long,
      @JsonKey(name: 'lat') double? lat,
      @JsonKey(name: 'is_profile_verified') bool? isProfileVerified,
      @JsonKey(name: 'document_verified_at') String? documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable') int? questionFeatureEnable,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl,
      @JsonKey(name: 'full_address') String? fullAddress,
      @JsonKey(name: 'user') CompanyUser? user});

  $CompanyUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? industryTypeId = freezed,
    Object? organizationTypeId = freezed,
    Object? teamSizeId = freezed,
    Object? logo = freezed,
    Object? banner = freezed,
    Object? establishmentDate = freezed,
    Object? website = freezed,
    Object? visibility = freezed,
    Object? profileCompletion = freezed,
    Object? bio = freezed,
    Object? vision = freezed,
    Object? totalViews = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? exactLocation = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? isProfileVerified = freezed,
    Object? documentVerifiedAt = freezed,
    Object? questionFeatureEnable = freezed,
    Object? logoUrl = freezed,
    Object? bannerUrl = freezed,
    Object? fullAddress = freezed,
    Object? user = freezed,
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
      industryTypeId: freezed == industryTypeId
          ? _value.industryTypeId
          : industryTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationTypeId: freezed == organizationTypeId
          ? _value.organizationTypeId
          : organizationTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      teamSizeId: freezed == teamSizeId
          ? _value.teamSizeId
          : teamSizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      establishmentDate: freezed == establishmentDate
          ? _value.establishmentDate
          : establishmentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      profileCompletion: freezed == profileCompletion
          ? _value.profileCompletion
          : profileCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      vision: freezed == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      totalViews: freezed == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      exactLocation: freezed == exactLocation
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      isProfileVerified: freezed == isProfileVerified
          ? _value.isProfileVerified
          : isProfileVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      documentVerifiedAt: freezed == documentVerifiedAt
          ? _value.documentVerifiedAt
          : documentVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFeatureEnable: freezed == questionFeatureEnable
          ? _value.questionFeatureEnable
          : questionFeatureEnable // ignore: cast_nullable_to_non_nullable
              as int?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CompanyUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $CompanyUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'industry_type_id') int? industryTypeId,
      @JsonKey(name: 'organization_type_id') int? organizationTypeId,
      @JsonKey(name: 'team_size_id') int? teamSizeId,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'establishment_date') String? establishmentDate,
      @JsonKey(name: 'website') String? website,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'profile_completion') bool? profileCompletion,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'vision') String? vision,
      @JsonKey(name: 'total_views') int? totalViews,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'exact_location') String? exactLocation,
      @JsonKey(name: 'neighborhood') String? neighborhood,
      @JsonKey(name: 'locality') String? locality,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'postcode') String? postcode,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'long') double? long,
      @JsonKey(name: 'lat') double? lat,
      @JsonKey(name: 'is_profile_verified') bool? isProfileVerified,
      @JsonKey(name: 'document_verified_at') String? documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable') int? questionFeatureEnable,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl,
      @JsonKey(name: 'full_address') String? fullAddress,
      @JsonKey(name: 'user') CompanyUser? user});

  @override
  $CompanyUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? industryTypeId = freezed,
    Object? organizationTypeId = freezed,
    Object? teamSizeId = freezed,
    Object? logo = freezed,
    Object? banner = freezed,
    Object? establishmentDate = freezed,
    Object? website = freezed,
    Object? visibility = freezed,
    Object? profileCompletion = freezed,
    Object? bio = freezed,
    Object? vision = freezed,
    Object? totalViews = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? exactLocation = freezed,
    Object? neighborhood = freezed,
    Object? locality = freezed,
    Object? place = freezed,
    Object? district = freezed,
    Object? postcode = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? isProfileVerified = freezed,
    Object? documentVerifiedAt = freezed,
    Object? questionFeatureEnable = freezed,
    Object? logoUrl = freezed,
    Object? bannerUrl = freezed,
    Object? fullAddress = freezed,
    Object? user = freezed,
  }) {
    return _then(_$CompanyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      industryTypeId: freezed == industryTypeId
          ? _value.industryTypeId
          : industryTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationTypeId: freezed == organizationTypeId
          ? _value.organizationTypeId
          : organizationTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      teamSizeId: freezed == teamSizeId
          ? _value.teamSizeId
          : teamSizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      establishmentDate: freezed == establishmentDate
          ? _value.establishmentDate
          : establishmentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      profileCompletion: freezed == profileCompletion
          ? _value.profileCompletion
          : profileCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      vision: freezed == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      totalViews: freezed == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      exactLocation: freezed == exactLocation
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      isProfileVerified: freezed == isProfileVerified
          ? _value.isProfileVerified
          : isProfileVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      documentVerifiedAt: freezed == documentVerifiedAt
          ? _value.documentVerifiedAt
          : documentVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFeatureEnable: freezed == questionFeatureEnable
          ? _value.questionFeatureEnable
          : questionFeatureEnable // ignore: cast_nullable_to_non_nullable
              as int?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CompanyUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl with DiagnosticableTreeMixin implements _Company {
  const _$CompanyImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'industry_type_id') this.industryTypeId,
      @JsonKey(name: 'organization_type_id') this.organizationTypeId,
      @JsonKey(name: 'team_size_id') this.teamSizeId,
      @JsonKey(name: 'logo') this.logo,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'establishment_date') this.establishmentDate,
      @JsonKey(name: 'website') this.website,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'profile_completion') this.profileCompletion,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'vision') this.vision,
      @JsonKey(name: 'total_views') this.totalViews,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'exact_location') this.exactLocation,
      @JsonKey(name: 'neighborhood') this.neighborhood,
      @JsonKey(name: 'locality') this.locality,
      @JsonKey(name: 'place') this.place,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'postcode') this.postcode,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'long') this.long,
      @JsonKey(name: 'lat') this.lat,
      @JsonKey(name: 'is_profile_verified') this.isProfileVerified,
      @JsonKey(name: 'document_verified_at') this.documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable') this.questionFeatureEnable,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'banner_url') this.bannerUrl,
      @JsonKey(name: 'full_address') this.fullAddress,
      @JsonKey(name: 'user') this.user});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'industry_type_id')
  final int? industryTypeId;
  @override
  @JsonKey(name: 'organization_type_id')
  final int? organizationTypeId;
  @override
  @JsonKey(name: 'team_size_id')
  final int? teamSizeId;
  @override
  @JsonKey(name: 'logo')
  final String? logo;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'establishment_date')
  final String? establishmentDate;
  @override
  @JsonKey(name: 'website')
  final String? website;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'profile_completion')
  final bool? profileCompletion;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'vision')
  final String? vision;
  @override
  @JsonKey(name: 'total_views')
  final int? totalViews;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'exact_location')
  final String? exactLocation;
  @override
  @JsonKey(name: 'neighborhood')
  final String? neighborhood;
  @override
  @JsonKey(name: 'locality')
  final String? locality;
  @override
  @JsonKey(name: 'place')
  final String? place;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'postcode')
  final String? postcode;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'long')
  final double? long;
  @override
  @JsonKey(name: 'lat')
  final double? lat;
  @override
  @JsonKey(name: 'is_profile_verified')
  final bool? isProfileVerified;
  @override
  @JsonKey(name: 'document_verified_at')
  final String? documentVerifiedAt;
  @override
  @JsonKey(name: 'question_feature_enable')
  final int? questionFeatureEnable;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'banner_url')
  final String? bannerUrl;
  @override
  @JsonKey(name: 'full_address')
  final String? fullAddress;
  @override
  @JsonKey(name: 'user')
  final CompanyUser? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Company(id: $id, userId: $userId, industryTypeId: $industryTypeId, organizationTypeId: $organizationTypeId, teamSizeId: $teamSizeId, logo: $logo, banner: $banner, establishmentDate: $establishmentDate, website: $website, visibility: $visibility, profileCompletion: $profileCompletion, bio: $bio, vision: $vision, totalViews: $totalViews, createdAt: $createdAt, updatedAt: $updatedAt, address: $address, exactLocation: $exactLocation, neighborhood: $neighborhood, locality: $locality, place: $place, district: $district, postcode: $postcode, region: $region, country: $country, long: $long, lat: $lat, isProfileVerified: $isProfileVerified, documentVerifiedAt: $documentVerifiedAt, questionFeatureEnable: $questionFeatureEnable, logoUrl: $logoUrl, bannerUrl: $bannerUrl, fullAddress: $fullAddress, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Company'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('industryTypeId', industryTypeId))
      ..add(DiagnosticsProperty('organizationTypeId', organizationTypeId))
      ..add(DiagnosticsProperty('teamSizeId', teamSizeId))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('banner', banner))
      ..add(DiagnosticsProperty('establishmentDate', establishmentDate))
      ..add(DiagnosticsProperty('website', website))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('profileCompletion', profileCompletion))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('vision', vision))
      ..add(DiagnosticsProperty('totalViews', totalViews))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('exactLocation', exactLocation))
      ..add(DiagnosticsProperty('neighborhood', neighborhood))
      ..add(DiagnosticsProperty('locality', locality))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('district', district))
      ..add(DiagnosticsProperty('postcode', postcode))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('long', long))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('isProfileVerified', isProfileVerified))
      ..add(DiagnosticsProperty('documentVerifiedAt', documentVerifiedAt))
      ..add(DiagnosticsProperty('questionFeatureEnable', questionFeatureEnable))
      ..add(DiagnosticsProperty('logoUrl', logoUrl))
      ..add(DiagnosticsProperty('bannerUrl', bannerUrl))
      ..add(DiagnosticsProperty('fullAddress', fullAddress))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.industryTypeId, industryTypeId) ||
                other.industryTypeId == industryTypeId) &&
            (identical(other.organizationTypeId, organizationTypeId) ||
                other.organizationTypeId == organizationTypeId) &&
            (identical(other.teamSizeId, teamSizeId) ||
                other.teamSizeId == teamSizeId) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.establishmentDate, establishmentDate) ||
                other.establishmentDate == establishmentDate) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.profileCompletion, profileCompletion) ||
                other.profileCompletion == profileCompletion) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.vision, vision) || other.vision == vision) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.exactLocation, exactLocation) ||
                other.exactLocation == exactLocation) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.isProfileVerified, isProfileVerified) ||
                other.isProfileVerified == isProfileVerified) &&
            (identical(other.documentVerifiedAt, documentVerifiedAt) ||
                other.documentVerifiedAt == documentVerifiedAt) &&
            (identical(other.questionFeatureEnable, questionFeatureEnable) ||
                other.questionFeatureEnable == questionFeatureEnable) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        industryTypeId,
        organizationTypeId,
        teamSizeId,
        logo,
        banner,
        establishmentDate,
        website,
        visibility,
        profileCompletion,
        bio,
        vision,
        totalViews,
        createdAt,
        updatedAt,
        address,
        exactLocation,
        neighborhood,
        locality,
        place,
        district,
        postcode,
        region,
        country,
        long,
        lat,
        isProfileVerified,
        documentVerifiedAt,
        questionFeatureEnable,
        logoUrl,
        bannerUrl,
        fullAddress,
        user
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'industry_type_id') final int? industryTypeId,
      @JsonKey(name: 'organization_type_id') final int? organizationTypeId,
      @JsonKey(name: 'team_size_id') final int? teamSizeId,
      @JsonKey(name: 'logo') final String? logo,
      @JsonKey(name: 'banner') final String? banner,
      @JsonKey(name: 'establishment_date') final String? establishmentDate,
      @JsonKey(name: 'website') final String? website,
      @JsonKey(name: 'visibility') final int? visibility,
      @JsonKey(name: 'profile_completion') final bool? profileCompletion,
      @JsonKey(name: 'bio') final String? bio,
      @JsonKey(name: 'vision') final String? vision,
      @JsonKey(name: 'total_views') final int? totalViews,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'exact_location') final String? exactLocation,
      @JsonKey(name: 'neighborhood') final String? neighborhood,
      @JsonKey(name: 'locality') final String? locality,
      @JsonKey(name: 'place') final String? place,
      @JsonKey(name: 'district') final String? district,
      @JsonKey(name: 'postcode') final String? postcode,
      @JsonKey(name: 'region') final String? region,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'long') final double? long,
      @JsonKey(name: 'lat') final double? lat,
      @JsonKey(name: 'is_profile_verified') final bool? isProfileVerified,
      @JsonKey(name: 'document_verified_at') final String? documentVerifiedAt,
      @JsonKey(name: 'question_feature_enable')
      final int? questionFeatureEnable,
      @JsonKey(name: 'logo_url') final String? logoUrl,
      @JsonKey(name: 'banner_url') final String? bannerUrl,
      @JsonKey(name: 'full_address') final String? fullAddress,
      @JsonKey(name: 'user') final CompanyUser? user}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'industry_type_id')
  int? get industryTypeId;
  @override
  @JsonKey(name: 'organization_type_id')
  int? get organizationTypeId;
  @override
  @JsonKey(name: 'team_size_id')
  int? get teamSizeId;
  @override
  @JsonKey(name: 'logo')
  String? get logo;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'establishment_date')
  String? get establishmentDate;
  @override
  @JsonKey(name: 'website')
  String? get website;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'profile_completion')
  bool? get profileCompletion;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'vision')
  String? get vision;
  @override
  @JsonKey(name: 'total_views')
  int? get totalViews;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'exact_location')
  String? get exactLocation;
  @override
  @JsonKey(name: 'neighborhood')
  String? get neighborhood;
  @override
  @JsonKey(name: 'locality')
  String? get locality;
  @override
  @JsonKey(name: 'place')
  String? get place;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'postcode')
  String? get postcode;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'long')
  double? get long;
  @override
  @JsonKey(name: 'lat')
  double? get lat;
  @override
  @JsonKey(name: 'is_profile_verified')
  bool? get isProfileVerified;
  @override
  @JsonKey(name: 'document_verified_at')
  String? get documentVerifiedAt;
  @override
  @JsonKey(name: 'question_feature_enable')
  int? get questionFeatureEnable;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'banner_url')
  String? get bannerUrl;
  @override
  @JsonKey(name: 'full_address')
  String? get fullAddress;
  @override
  @JsonKey(name: 'user')
  CompanyUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyUser _$CompanyUserFromJson(Map<String, dynamic> json) {
  return _CompanyUser.fromJson(json);
}

/// @nodoc
mixin _$CompanyUser {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'recent_activities_alert')
  int? get recentActivitiesAlert => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_expired_alert')
  int? get jobExpiredAlert => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_job_alert')
  int? get newJobAlert => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortlisted_alert')
  int? get shortlistedAlert => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_demo_field')
  int? get isDemoField => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_type')
  String? get authType => throw _privateConstructorUsedError;
  @JsonKey(name: 'google_id')
  String? get googleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_id')
  String? get facebookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider')
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  String? get providerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'recent_activities_alert') int? recentActivitiesAlert,
      @JsonKey(name: 'job_expired_alert') int? jobExpiredAlert,
      @JsonKey(name: 'new_job_alert') int? newJobAlert,
      @JsonKey(name: 'shortlisted_alert') int? shortlistedAlert,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'is_demo_field') int? isDemoField,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'auth_type') String? authType,
      @JsonKey(name: 'google_id') String? googleId,
      @JsonKey(name: 'facebook_id') String? facebookId,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      @JsonKey(name: 'image_url') String? imageUrl});
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
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? image = freezed,
    Object? role = freezed,
    Object? recentActivitiesAlert = freezed,
    Object? jobExpiredAlert = freezed,
    Object? newJobAlert = freezed,
    Object? shortlistedAlert = freezed,
    Object? status = freezed,
    Object? isDemoField = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? authType = freezed,
    Object? googleId = freezed,
    Object? facebookId = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? imageUrl = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      recentActivitiesAlert: freezed == recentActivitiesAlert
          ? _value.recentActivitiesAlert
          : recentActivitiesAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      jobExpiredAlert: freezed == jobExpiredAlert
          ? _value.jobExpiredAlert
          : jobExpiredAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      newJobAlert: freezed == newJobAlert
          ? _value.newJobAlert
          : newJobAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      shortlistedAlert: freezed == shortlistedAlert
          ? _value.shortlistedAlert
          : shortlistedAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isDemoField: freezed == isDemoField
          ? _value.isDemoField
          : isDemoField // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      authType: freezed == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as String?,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyUserImplCopyWith<$Res>
    implements $CompanyUserCopyWith<$Res> {
  factory _$$CompanyUserImplCopyWith(
          _$CompanyUserImpl value, $Res Function(_$CompanyUserImpl) then) =
      __$$CompanyUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'recent_activities_alert') int? recentActivitiesAlert,
      @JsonKey(name: 'job_expired_alert') int? jobExpiredAlert,
      @JsonKey(name: 'new_job_alert') int? newJobAlert,
      @JsonKey(name: 'shortlisted_alert') int? shortlistedAlert,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'is_demo_field') int? isDemoField,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'auth_type') String? authType,
      @JsonKey(name: 'google_id') String? googleId,
      @JsonKey(name: 'facebook_id') String? facebookId,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$CompanyUserImplCopyWithImpl<$Res>
    extends _$CompanyUserCopyWithImpl<$Res, _$CompanyUserImpl>
    implements _$$CompanyUserImplCopyWith<$Res> {
  __$$CompanyUserImplCopyWithImpl(
      _$CompanyUserImpl _value, $Res Function(_$CompanyUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? image = freezed,
    Object? role = freezed,
    Object? recentActivitiesAlert = freezed,
    Object? jobExpiredAlert = freezed,
    Object? newJobAlert = freezed,
    Object? shortlistedAlert = freezed,
    Object? status = freezed,
    Object? isDemoField = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? authType = freezed,
    Object? googleId = freezed,
    Object? facebookId = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$CompanyUserImpl(
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      recentActivitiesAlert: freezed == recentActivitiesAlert
          ? _value.recentActivitiesAlert
          : recentActivitiesAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      jobExpiredAlert: freezed == jobExpiredAlert
          ? _value.jobExpiredAlert
          : jobExpiredAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      newJobAlert: freezed == newJobAlert
          ? _value.newJobAlert
          : newJobAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      shortlistedAlert: freezed == shortlistedAlert
          ? _value.shortlistedAlert
          : shortlistedAlert // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isDemoField: freezed == isDemoField
          ? _value.isDemoField
          : isDemoField // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      authType: freezed == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as String?,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyUserImpl with DiagnosticableTreeMixin implements _CompanyUser {
  const _$CompanyUserImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'recent_activities_alert') this.recentActivitiesAlert,
      @JsonKey(name: 'job_expired_alert') this.jobExpiredAlert,
      @JsonKey(name: 'new_job_alert') this.newJobAlert,
      @JsonKey(name: 'shortlisted_alert') this.shortlistedAlert,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'is_demo_field') this.isDemoField,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'auth_type') this.authType,
      @JsonKey(name: 'google_id') this.googleId,
      @JsonKey(name: 'facebook_id') this.facebookId,
      @JsonKey(name: 'provider') this.provider,
      @JsonKey(name: 'provider_id') this.providerId,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$CompanyUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyUserImplFromJson(json);

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
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'recent_activities_alert')
  final int? recentActivitiesAlert;
  @override
  @JsonKey(name: 'job_expired_alert')
  final int? jobExpiredAlert;
  @override
  @JsonKey(name: 'new_job_alert')
  final int? newJobAlert;
  @override
  @JsonKey(name: 'shortlisted_alert')
  final int? shortlistedAlert;
  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'is_demo_field')
  final int? isDemoField;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'auth_type')
  final String? authType;
  @override
  @JsonKey(name: 'google_id')
  final String? googleId;
  @override
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @override
  @JsonKey(name: 'provider')
  final String? provider;
  @override
  @JsonKey(name: 'provider_id')
  final String? providerId;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyUser(id: $id, name: $name, username: $username, email: $email, emailVerifiedAt: $emailVerifiedAt, image: $image, role: $role, recentActivitiesAlert: $recentActivitiesAlert, jobExpiredAlert: $jobExpiredAlert, newJobAlert: $newJobAlert, shortlistedAlert: $shortlistedAlert, status: $status, isDemoField: $isDemoField, createdAt: $createdAt, updatedAt: $updatedAt, authType: $authType, googleId: $googleId, facebookId: $facebookId, provider: $provider, providerId: $providerId, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVerifiedAt', emailVerifiedAt))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('recentActivitiesAlert', recentActivitiesAlert))
      ..add(DiagnosticsProperty('jobExpiredAlert', jobExpiredAlert))
      ..add(DiagnosticsProperty('newJobAlert', newJobAlert))
      ..add(DiagnosticsProperty('shortlistedAlert', shortlistedAlert))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isDemoField', isDemoField))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('authType', authType))
      ..add(DiagnosticsProperty('googleId', googleId))
      ..add(DiagnosticsProperty('facebookId', facebookId))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('providerId', providerId))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.recentActivitiesAlert, recentActivitiesAlert) ||
                other.recentActivitiesAlert == recentActivitiesAlert) &&
            (identical(other.jobExpiredAlert, jobExpiredAlert) ||
                other.jobExpiredAlert == jobExpiredAlert) &&
            (identical(other.newJobAlert, newJobAlert) ||
                other.newJobAlert == newJobAlert) &&
            (identical(other.shortlistedAlert, shortlistedAlert) ||
                other.shortlistedAlert == shortlistedAlert) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDemoField, isDemoField) ||
                other.isDemoField == isDemoField) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.authType, authType) ||
                other.authType == authType) &&
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        username,
        email,
        emailVerifiedAt,
        image,
        role,
        recentActivitiesAlert,
        jobExpiredAlert,
        newJobAlert,
        shortlistedAlert,
        status,
        isDemoField,
        createdAt,
        updatedAt,
        authType,
        googleId,
        facebookId,
        provider,
        providerId,
        imageUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyUserImplCopyWith<_$CompanyUserImpl> get copyWith =>
      __$$CompanyUserImplCopyWithImpl<_$CompanyUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyUserImplToJson(
      this,
    );
  }
}

abstract class _CompanyUser implements CompanyUser {
  const factory _CompanyUser(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'recent_activities_alert')
      final int? recentActivitiesAlert,
      @JsonKey(name: 'job_expired_alert') final int? jobExpiredAlert,
      @JsonKey(name: 'new_job_alert') final int? newJobAlert,
      @JsonKey(name: 'shortlisted_alert') final int? shortlistedAlert,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'is_demo_field') final int? isDemoField,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'auth_type') final String? authType,
      @JsonKey(name: 'google_id') final String? googleId,
      @JsonKey(name: 'facebook_id') final String? facebookId,
      @JsonKey(name: 'provider') final String? provider,
      @JsonKey(name: 'provider_id') final String? providerId,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$CompanyUserImpl;

  factory _CompanyUser.fromJson(Map<String, dynamic> json) =
      _$CompanyUserImpl.fromJson;

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
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'recent_activities_alert')
  int? get recentActivitiesAlert;
  @override
  @JsonKey(name: 'job_expired_alert')
  int? get jobExpiredAlert;
  @override
  @JsonKey(name: 'new_job_alert')
  int? get newJobAlert;
  @override
  @JsonKey(name: 'shortlisted_alert')
  int? get shortlistedAlert;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'is_demo_field')
  int? get isDemoField;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'auth_type')
  String? get authType;
  @override
  @JsonKey(name: 'google_id')
  String? get googleId;
  @override
  @JsonKey(name: 'facebook_id')
  String? get facebookId;
  @override
  @JsonKey(name: 'provider')
  String? get provider;
  @override
  @JsonKey(name: 'provider_id')
  String? get providerId;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CompanyUserImplCopyWith<_$CompanyUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobType _$JobTypeFromJson(Map<String, dynamic> json) {
  return _JobType.fromJson(json);
}

/// @nodoc
mixin _$JobType {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTypeCopyWith<JobType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTypeCopyWith<$Res> {
  factory $JobTypeCopyWith(JobType value, $Res Function(JobType) then) =
      _$JobTypeCopyWithImpl<$Res, JobType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$JobTypeCopyWithImpl<$Res, $Val extends JobType>
    implements $JobTypeCopyWith<$Res> {
  _$JobTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$JobTypeImplCopyWith<$Res> implements $JobTypeCopyWith<$Res> {
  factory _$$JobTypeImplCopyWith(
          _$JobTypeImpl value, $Res Function(_$JobTypeImpl) then) =
      __$$JobTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$JobTypeImplCopyWithImpl<$Res>
    extends _$JobTypeCopyWithImpl<$Res, _$JobTypeImpl>
    implements _$$JobTypeImplCopyWith<$Res> {
  __$$JobTypeImplCopyWithImpl(
      _$JobTypeImpl _value, $Res Function(_$JobTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$JobTypeImpl(
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
class _$JobTypeImpl with DiagnosticableTreeMixin implements _JobType {
  const _$JobTypeImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$JobTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobTypeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobType(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobTypeImplCopyWith<_$JobTypeImpl> get copyWith =>
      __$$JobTypeImplCopyWithImpl<_$JobTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobTypeImplToJson(
      this,
    );
  }
}

abstract class _JobType implements JobType {
  const factory _JobType(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$JobTypeImpl;

  factory _JobType.fromJson(Map<String, dynamic> json) = _$JobTypeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$JobTypeImplCopyWith<_$JobTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
