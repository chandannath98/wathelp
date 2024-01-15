// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_favorite_jobs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedFavoriteJobsResponse _$PaginatedFavoriteJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _PaginatedFavoriteJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedFavoriteJobsResponse {
  @JsonKey(name: 'data')
  List<FavoriteJob>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  Links? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedFavoriteJobsResponseCopyWith<PaginatedFavoriteJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedFavoriteJobsResponseCopyWith<$Res> {
  factory $PaginatedFavoriteJobsResponseCopyWith(
          PaginatedFavoriteJobsResponse value,
          $Res Function(PaginatedFavoriteJobsResponse) then) =
      _$PaginatedFavoriteJobsResponseCopyWithImpl<$Res,
          PaginatedFavoriteJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<FavoriteJob>? data,
      @JsonKey(name: 'links') Links? links,
      @JsonKey(name: 'meta') Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PaginatedFavoriteJobsResponseCopyWithImpl<$Res,
        $Val extends PaginatedFavoriteJobsResponse>
    implements $PaginatedFavoriteJobsResponseCopyWith<$Res> {
  _$PaginatedFavoriteJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FavoriteJob>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedFavoriteJobsResponseImplCopyWith<$Res>
    implements $PaginatedFavoriteJobsResponseCopyWith<$Res> {
  factory _$$PaginatedFavoriteJobsResponseImplCopyWith(
          _$PaginatedFavoriteJobsResponseImpl value,
          $Res Function(_$PaginatedFavoriteJobsResponseImpl) then) =
      __$$PaginatedFavoriteJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<FavoriteJob>? data,
      @JsonKey(name: 'links') Links? links,
      @JsonKey(name: 'meta') Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$PaginatedFavoriteJobsResponseImplCopyWithImpl<$Res>
    extends _$PaginatedFavoriteJobsResponseCopyWithImpl<$Res,
        _$PaginatedFavoriteJobsResponseImpl>
    implements _$$PaginatedFavoriteJobsResponseImplCopyWith<$Res> {
  __$$PaginatedFavoriteJobsResponseImplCopyWithImpl(
      _$PaginatedFavoriteJobsResponseImpl _value,
      $Res Function(_$PaginatedFavoriteJobsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$PaginatedFavoriteJobsResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FavoriteJob>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedFavoriteJobsResponseImpl
    with DiagnosticableTreeMixin
    implements _PaginatedFavoriteJobsResponse {
  const _$PaginatedFavoriteJobsResponseImpl(
      {@JsonKey(name: 'data') final List<FavoriteJob>? data,
      @JsonKey(name: 'links') this.links,
      @JsonKey(name: 'meta') this.meta})
      : _data = data;

  factory _$PaginatedFavoriteJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaginatedFavoriteJobsResponseImplFromJson(json);

  final List<FavoriteJob>? _data;
  @override
  @JsonKey(name: 'data')
  List<FavoriteJob>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'links')
  final Links? links;
  @override
  @JsonKey(name: 'meta')
  final Meta? meta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedFavoriteJobsResponse(data: $data, links: $links, meta: $meta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedFavoriteJobsResponse'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedFavoriteJobsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedFavoriteJobsResponseImplCopyWith<
          _$PaginatedFavoriteJobsResponseImpl>
      get copyWith => __$$PaginatedFavoriteJobsResponseImplCopyWithImpl<
          _$PaginatedFavoriteJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedFavoriteJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginatedFavoriteJobsResponse
    implements PaginatedFavoriteJobsResponse {
  const factory _PaginatedFavoriteJobsResponse(
          {@JsonKey(name: 'data') final List<FavoriteJob>? data,
          @JsonKey(name: 'links') final Links? links,
          @JsonKey(name: 'meta') final Meta? meta}) =
      _$PaginatedFavoriteJobsResponseImpl;

  factory _PaginatedFavoriteJobsResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedFavoriteJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<FavoriteJob>? get data;
  @override
  @JsonKey(name: 'links')
  Links? get links;
  @override
  @JsonKey(name: 'meta')
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedFavoriteJobsResponseImplCopyWith<
          _$PaginatedFavoriteJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
