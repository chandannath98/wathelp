// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_top_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeTopCategories _$HomeTopCategoriesFromJson(Map<String, dynamic> json) {
  return _HomeTopCategories.fromJson(json);
}

/// @nodoc
mixin _$HomeTopCategories {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeTopCategoriesCopyWith<HomeTopCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTopCategoriesCopyWith<$Res> {
  factory $HomeTopCategoriesCopyWith(
          HomeTopCategories value, $Res Function(HomeTopCategories) then) =
      _$HomeTopCategoriesCopyWithImpl<$Res, HomeTopCategories>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$HomeTopCategoriesCopyWithImpl<$Res, $Val extends HomeTopCategories>
    implements $HomeTopCategoriesCopyWith<$Res> {
  _$HomeTopCategoriesCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeTopCategoriesImplCopyWith<$Res>
    implements $HomeTopCategoriesCopyWith<$Res> {
  factory _$$HomeTopCategoriesImplCopyWith(_$HomeTopCategoriesImpl value,
          $Res Function(_$HomeTopCategoriesImpl) then) =
      __$$HomeTopCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$HomeTopCategoriesImplCopyWithImpl<$Res>
    extends _$HomeTopCategoriesCopyWithImpl<$Res, _$HomeTopCategoriesImpl>
    implements _$$HomeTopCategoriesImplCopyWith<$Res> {
  __$$HomeTopCategoriesImplCopyWithImpl(_$HomeTopCategoriesImpl _value,
      $Res Function(_$HomeTopCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$HomeTopCategoriesImpl(
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
class _$HomeTopCategoriesImpl
    with DiagnosticableTreeMixin
    implements _HomeTopCategories {
  const _$HomeTopCategoriesImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$HomeTopCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeTopCategoriesImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeTopCategories(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeTopCategories'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTopCategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTopCategoriesImplCopyWith<_$HomeTopCategoriesImpl> get copyWith =>
      __$$HomeTopCategoriesImplCopyWithImpl<_$HomeTopCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeTopCategoriesImplToJson(
      this,
    );
  }
}

abstract class _HomeTopCategories implements HomeTopCategories {
  const factory _HomeTopCategories(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$HomeTopCategoriesImpl;

  factory _HomeTopCategories.fromJson(Map<String, dynamic> json) =
      _$HomeTopCategoriesImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$HomeTopCategoriesImplCopyWith<_$HomeTopCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
