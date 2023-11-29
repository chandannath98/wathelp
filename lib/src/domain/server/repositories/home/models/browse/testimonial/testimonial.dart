import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'testimonial.freezed.dart';
part 'testimonial.g.dart';

@freezed
class Testimonial with _$Testimonial {
  const factory Testimonial({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'designation') String? designation,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'image') String? image,
  }) = _Testimonial;

  factory Testimonial.fromJson(Map<String, Object?> json) =>
      _$TestimonialFromJson(json);
}
