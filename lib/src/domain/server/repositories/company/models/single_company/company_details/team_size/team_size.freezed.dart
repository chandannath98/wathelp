// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamSize _$TeamSizeFromJson(Map<String, dynamic> json) {
  return _TeamSize.fromJson(json);
}

/// @nodoc
mixin _$TeamSize {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamSizeCopyWith<TeamSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamSizeCopyWith<$Res> {
  factory $TeamSizeCopyWith(TeamSize value, $Res Function(TeamSize) then) =
      _$TeamSizeCopyWithImpl<$Res, TeamSize>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$TeamSizeCopyWithImpl<$Res, $Val extends TeamSize>
    implements $TeamSizeCopyWith<$Res> {
  _$TeamSizeCopyWithImpl(this._value, this._then);

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
abstract class _$$TeamSizeImplCopyWith<$Res>
    implements $TeamSizeCopyWith<$Res> {
  factory _$$TeamSizeImplCopyWith(
          _$TeamSizeImpl value, $Res Function(_$TeamSizeImpl) then) =
      __$$TeamSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$TeamSizeImplCopyWithImpl<$Res>
    extends _$TeamSizeCopyWithImpl<$Res, _$TeamSizeImpl>
    implements _$$TeamSizeImplCopyWith<$Res> {
  __$$TeamSizeImplCopyWithImpl(
      _$TeamSizeImpl _value, $Res Function(_$TeamSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TeamSizeImpl(
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
class _$TeamSizeImpl with DiagnosticableTreeMixin implements _TeamSize {
  const _$TeamSizeImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$TeamSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamSizeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeamSize(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TeamSize'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamSizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamSizeImplCopyWith<_$TeamSizeImpl> get copyWith =>
      __$$TeamSizeImplCopyWithImpl<_$TeamSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamSizeImplToJson(
      this,
    );
  }
}

abstract class _TeamSize implements TeamSize {
  const factory _TeamSize(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$TeamSizeImpl;

  factory _TeamSize.fromJson(Map<String, dynamic> json) =
      _$TeamSizeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TeamSizeImplCopyWith<_$TeamSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
