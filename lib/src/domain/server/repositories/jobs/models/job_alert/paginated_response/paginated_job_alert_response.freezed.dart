// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_job_alert_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedJobAlertResponse _$PaginatedJobAlertResponseFromJson(
    Map<String, dynamic> json) {
  return _PaginatedJobAlertResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedJobAlertResponse {
  @JsonKey(name: 'notifications')
  PaginatedJobAlertData? get notifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedJobAlertResponseCopyWith<PaginatedJobAlertResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedJobAlertResponseCopyWith<$Res> {
  factory $PaginatedJobAlertResponseCopyWith(PaginatedJobAlertResponse value,
          $Res Function(PaginatedJobAlertResponse) then) =
      _$PaginatedJobAlertResponseCopyWithImpl<$Res, PaginatedJobAlertResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') PaginatedJobAlertData? notifications,
      @JsonKey(name: 'message') String? message});

  $PaginatedJobAlertDataCopyWith<$Res>? get notifications;
}

/// @nodoc
class _$PaginatedJobAlertResponseCopyWithImpl<$Res,
        $Val extends PaginatedJobAlertResponse>
    implements $PaginatedJobAlertResponseCopyWith<$Res> {
  _$PaginatedJobAlertResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as PaginatedJobAlertData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedJobAlertDataCopyWith<$Res>? get notifications {
    if (_value.notifications == null) {
      return null;
    }

    return $PaginatedJobAlertDataCopyWith<$Res>(_value.notifications!, (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedJobAlertResponseImplCopyWith<$Res>
    implements $PaginatedJobAlertResponseCopyWith<$Res> {
  factory _$$PaginatedJobAlertResponseImplCopyWith(
          _$PaginatedJobAlertResponseImpl value,
          $Res Function(_$PaginatedJobAlertResponseImpl) then) =
      __$$PaginatedJobAlertResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') PaginatedJobAlertData? notifications,
      @JsonKey(name: 'message') String? message});

  @override
  $PaginatedJobAlertDataCopyWith<$Res>? get notifications;
}

/// @nodoc
class __$$PaginatedJobAlertResponseImplCopyWithImpl<$Res>
    extends _$PaginatedJobAlertResponseCopyWithImpl<$Res,
        _$PaginatedJobAlertResponseImpl>
    implements _$$PaginatedJobAlertResponseImplCopyWith<$Res> {
  __$$PaginatedJobAlertResponseImplCopyWithImpl(
      _$PaginatedJobAlertResponseImpl _value,
      $Res Function(_$PaginatedJobAlertResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PaginatedJobAlertResponseImpl(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as PaginatedJobAlertData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedJobAlertResponseImpl
    with DiagnosticableTreeMixin
    implements _PaginatedJobAlertResponse {
  const _$PaginatedJobAlertResponseImpl(
      {@JsonKey(name: 'notifications') this.notifications,
      @JsonKey(name: 'message') this.message});

  factory _$PaginatedJobAlertResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedJobAlertResponseImplFromJson(json);

  @override
  @JsonKey(name: 'notifications')
  final PaginatedJobAlertData? notifications;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedJobAlertResponse(notifications: $notifications, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedJobAlertResponse'))
      ..add(DiagnosticsProperty('notifications', notifications))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedJobAlertResponseImpl &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notifications, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedJobAlertResponseImplCopyWith<_$PaginatedJobAlertResponseImpl>
      get copyWith => __$$PaginatedJobAlertResponseImplCopyWithImpl<
          _$PaginatedJobAlertResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedJobAlertResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginatedJobAlertResponse implements PaginatedJobAlertResponse {
  const factory _PaginatedJobAlertResponse(
          {@JsonKey(name: 'notifications')
          final PaginatedJobAlertData? notifications,
          @JsonKey(name: 'message') final String? message}) =
      _$PaginatedJobAlertResponseImpl;

  factory _PaginatedJobAlertResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedJobAlertResponseImpl.fromJson;

  @override
  @JsonKey(name: 'notifications')
  PaginatedJobAlertData? get notifications;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedJobAlertResponseImplCopyWith<_$PaginatedJobAlertResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaginatedJobAlertData _$PaginatedJobAlertDataFromJson(
    Map<String, dynamic> json) {
  return _PaginatedJobAlertData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedJobAlertData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<AlertJob>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  List<Links>? get links => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedJobAlertDataCopyWith<PaginatedJobAlertData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedJobAlertDataCopyWith<$Res> {
  factory $PaginatedJobAlertDataCopyWith(PaginatedJobAlertData value,
          $Res Function(PaginatedJobAlertData) then) =
      _$PaginatedJobAlertDataCopyWithImpl<$Res, PaginatedJobAlertData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<AlertJob>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'links') List<Links>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      @JsonKey(name: 'to') int? to,
      @JsonKey(name: 'total') int? total});
}

/// @nodoc
class _$PaginatedJobAlertDataCopyWithImpl<$Res,
        $Val extends PaginatedJobAlertData>
    implements $PaginatedJobAlertDataCopyWith<$Res> {
  _$PaginatedJobAlertDataCopyWithImpl(this._value, this._then);

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
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlertJob>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Links>?,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedJobAlertDataImplCopyWith<$Res>
    implements $PaginatedJobAlertDataCopyWith<$Res> {
  factory _$$PaginatedJobAlertDataImplCopyWith(
          _$PaginatedJobAlertDataImpl value,
          $Res Function(_$PaginatedJobAlertDataImpl) then) =
      __$$PaginatedJobAlertDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<AlertJob>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'links') List<Links>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      @JsonKey(name: 'to') int? to,
      @JsonKey(name: 'total') int? total});
}

/// @nodoc
class __$$PaginatedJobAlertDataImplCopyWithImpl<$Res>
    extends _$PaginatedJobAlertDataCopyWithImpl<$Res,
        _$PaginatedJobAlertDataImpl>
    implements _$$PaginatedJobAlertDataImplCopyWith<$Res> {
  __$$PaginatedJobAlertDataImplCopyWithImpl(_$PaginatedJobAlertDataImpl _value,
      $Res Function(_$PaginatedJobAlertDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PaginatedJobAlertDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlertJob>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Links>?,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedJobAlertDataImpl
    with DiagnosticableTreeMixin
    implements _PaginatedJobAlertData {
  const _$PaginatedJobAlertDataImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') final List<AlertJob>? data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      @JsonKey(name: 'links') final List<Links>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'total') this.total})
      : _data = data,
        _links = links;

  factory _$PaginatedJobAlertDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedJobAlertDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<AlertJob>? _data;
  @override
  @JsonKey(name: 'data')
  List<AlertJob>? get data {
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
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<Links>? _links;
  @override
  @JsonKey(name: 'links')
  List<Links>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: 'total')
  final int? total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedJobAlertData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedJobAlertData'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('lastPageUrl', lastPageUrl))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedJobAlertDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedJobAlertDataImplCopyWith<_$PaginatedJobAlertDataImpl>
      get copyWith => __$$PaginatedJobAlertDataImplCopyWithImpl<
          _$PaginatedJobAlertDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedJobAlertDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedJobAlertData implements PaginatedJobAlertData {
  const factory _PaginatedJobAlertData(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'data') final List<AlertJob>? data,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      @JsonKey(name: 'from') final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      @JsonKey(name: 'links') final List<Links>? links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      @JsonKey(name: 'to') final int? to,
      @JsonKey(name: 'total') final int? total}) = _$PaginatedJobAlertDataImpl;

  factory _PaginatedJobAlertData.fromJson(Map<String, dynamic> json) =
      _$PaginatedJobAlertDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'data')
  List<AlertJob>? get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'from')
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  @JsonKey(name: 'links')
  List<Links>? get links;
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
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedJobAlertDataImplCopyWith<_$PaginatedJobAlertDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
