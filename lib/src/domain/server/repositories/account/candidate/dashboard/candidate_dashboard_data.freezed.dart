// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate_dashboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandidateDashboardData _$CandidateDashboardDataFromJson(
    Map<String, dynamic> json) {
  return _CandidateDashboardData.fromJson(json);
}

/// @nodoc
mixin _$CandidateDashboardData {
  @JsonKey(name: 'profileComplated')
  int? get profileComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'appliedJobs')
  int? get appliedJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'favoriteJobs')
  int? get favoriteJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifications')
  int? get notifications => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateDashboardDataCopyWith<CandidateDashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateDashboardDataCopyWith<$Res> {
  factory $CandidateDashboardDataCopyWith(CandidateDashboardData value,
          $Res Function(CandidateDashboardData) then) =
      _$CandidateDashboardDataCopyWithImpl<$Res, CandidateDashboardData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profileComplated') int? profileComplete,
      @JsonKey(name: 'appliedJobs') int? appliedJobs,
      @JsonKey(name: 'favoriteJobs') int? favoriteJobs,
      @JsonKey(name: 'notifications') int? notifications});
}

/// @nodoc
class _$CandidateDashboardDataCopyWithImpl<$Res,
        $Val extends CandidateDashboardData>
    implements $CandidateDashboardDataCopyWith<$Res> {
  _$CandidateDashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileComplete = freezed,
    Object? appliedJobs = freezed,
    Object? favoriteJobs = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      profileComplete: freezed == profileComplete
          ? _value.profileComplete
          : profileComplete // ignore: cast_nullable_to_non_nullable
              as int?,
      appliedJobs: freezed == appliedJobs
          ? _value.appliedJobs
          : appliedJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      favoriteJobs: freezed == favoriteJobs
          ? _value.favoriteJobs
          : favoriteJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CandidateDashboardDataImplCopyWith<$Res>
    implements $CandidateDashboardDataCopyWith<$Res> {
  factory _$$CandidateDashboardDataImplCopyWith(
          _$CandidateDashboardDataImpl value,
          $Res Function(_$CandidateDashboardDataImpl) then) =
      __$$CandidateDashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profileComplated') int? profileComplete,
      @JsonKey(name: 'appliedJobs') int? appliedJobs,
      @JsonKey(name: 'favoriteJobs') int? favoriteJobs,
      @JsonKey(name: 'notifications') int? notifications});
}

/// @nodoc
class __$$CandidateDashboardDataImplCopyWithImpl<$Res>
    extends _$CandidateDashboardDataCopyWithImpl<$Res,
        _$CandidateDashboardDataImpl>
    implements _$$CandidateDashboardDataImplCopyWith<$Res> {
  __$$CandidateDashboardDataImplCopyWithImpl(
      _$CandidateDashboardDataImpl _value,
      $Res Function(_$CandidateDashboardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileComplete = freezed,
    Object? appliedJobs = freezed,
    Object? favoriteJobs = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_$CandidateDashboardDataImpl(
      profileComplete: freezed == profileComplete
          ? _value.profileComplete
          : profileComplete // ignore: cast_nullable_to_non_nullable
              as int?,
      appliedJobs: freezed == appliedJobs
          ? _value.appliedJobs
          : appliedJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      favoriteJobs: freezed == favoriteJobs
          ? _value.favoriteJobs
          : favoriteJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidateDashboardDataImpl extends _CandidateDashboardData
    with DiagnosticableTreeMixin {
  const _$CandidateDashboardDataImpl(
      {@JsonKey(name: 'profileComplated') this.profileComplete,
      @JsonKey(name: 'appliedJobs') this.appliedJobs,
      @JsonKey(name: 'favoriteJobs') this.favoriteJobs,
      @JsonKey(name: 'notifications') this.notifications})
      : super._();

  factory _$CandidateDashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandidateDashboardDataImplFromJson(json);

  @override
  @JsonKey(name: 'profileComplated')
  final int? profileComplete;
  @override
  @JsonKey(name: 'appliedJobs')
  final int? appliedJobs;
  @override
  @JsonKey(name: 'favoriteJobs')
  final int? favoriteJobs;
  @override
  @JsonKey(name: 'notifications')
  final int? notifications;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CandidateDashboardData(profileComplete: $profileComplete, appliedJobs: $appliedJobs, favoriteJobs: $favoriteJobs, notifications: $notifications)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CandidateDashboardData'))
      ..add(DiagnosticsProperty('profileComplete', profileComplete))
      ..add(DiagnosticsProperty('appliedJobs', appliedJobs))
      ..add(DiagnosticsProperty('favoriteJobs', favoriteJobs))
      ..add(DiagnosticsProperty('notifications', notifications));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandidateDashboardDataImpl &&
            (identical(other.profileComplete, profileComplete) ||
                other.profileComplete == profileComplete) &&
            (identical(other.appliedJobs, appliedJobs) ||
                other.appliedJobs == appliedJobs) &&
            (identical(other.favoriteJobs, favoriteJobs) ||
                other.favoriteJobs == favoriteJobs) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, profileComplete, appliedJobs, favoriteJobs, notifications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CandidateDashboardDataImplCopyWith<_$CandidateDashboardDataImpl>
      get copyWith => __$$CandidateDashboardDataImplCopyWithImpl<
          _$CandidateDashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandidateDashboardDataImplToJson(
      this,
    );
  }
}

abstract class _CandidateDashboardData extends CandidateDashboardData {
  const factory _CandidateDashboardData(
          {@JsonKey(name: 'profileComplated') final int? profileComplete,
          @JsonKey(name: 'appliedJobs') final int? appliedJobs,
          @JsonKey(name: 'favoriteJobs') final int? favoriteJobs,
          @JsonKey(name: 'notifications') final int? notifications}) =
      _$CandidateDashboardDataImpl;
  const _CandidateDashboardData._() : super._();

  factory _CandidateDashboardData.fromJson(Map<String, dynamic> json) =
      _$CandidateDashboardDataImpl.fromJson;

  @override
  @JsonKey(name: 'profileComplated')
  int? get profileComplete;
  @override
  @JsonKey(name: 'appliedJobs')
  int? get appliedJobs;
  @override
  @JsonKey(name: 'favoriteJobs')
  int? get favoriteJobs;
  @override
  @JsonKey(name: 'notifications')
  int? get notifications;
  @override
  @JsonKey(ignore: true)
  _$$CandidateDashboardDataImplCopyWith<_$CandidateDashboardDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
