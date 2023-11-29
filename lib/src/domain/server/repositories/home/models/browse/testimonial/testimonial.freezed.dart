// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testimonial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Testimonial _$TestimonialFromJson(Map<String, dynamic> json) {
  return _Testimonial.fromJson(json);
}

/// @nodoc
mixin _$Testimonial {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'designation')
  String? get designation => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestimonialCopyWith<Testimonial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestimonialCopyWith<$Res> {
  factory $TestimonialCopyWith(
          Testimonial value, $Res Function(Testimonial) then) =
      _$TestimonialCopyWithImpl<$Res, Testimonial>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'designation') String? designation,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$TestimonialCopyWithImpl<$Res, $Val extends Testimonial>
    implements $TestimonialCopyWith<$Res> {
  _$TestimonialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? designation = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestimonialImplCopyWith<$Res>
    implements $TestimonialCopyWith<$Res> {
  factory _$$TestimonialImplCopyWith(
          _$TestimonialImpl value, $Res Function(_$TestimonialImpl) then) =
      __$$TestimonialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'designation') String? designation,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$TestimonialImplCopyWithImpl<$Res>
    extends _$TestimonialCopyWithImpl<$Res, _$TestimonialImpl>
    implements _$$TestimonialImplCopyWith<$Res> {
  __$$TestimonialImplCopyWithImpl(
      _$TestimonialImpl _value, $Res Function(_$TestimonialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? designation = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$TestimonialImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestimonialImpl with DiagnosticableTreeMixin implements _Testimonial {
  const _$TestimonialImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'designation') this.designation,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image') this.image});

  factory _$TestimonialImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestimonialImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'designation')
  final String? designation;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Testimonial(name: $name, designation: $designation, description: $description, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Testimonial'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestimonialImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, designation, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestimonialImplCopyWith<_$TestimonialImpl> get copyWith =>
      __$$TestimonialImplCopyWithImpl<_$TestimonialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestimonialImplToJson(
      this,
    );
  }
}

abstract class _Testimonial implements Testimonial {
  const factory _Testimonial(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'designation') final String? designation,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'image') final String? image}) = _$TestimonialImpl;

  factory _Testimonial.fromJson(Map<String, dynamic> json) =
      _$TestimonialImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'designation')
  String? get designation;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$TestimonialImplCopyWith<_$TestimonialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
