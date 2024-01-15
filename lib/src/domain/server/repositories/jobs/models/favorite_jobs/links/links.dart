import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class Links with _$Links {
  const factory Links({
    @JsonKey(name: 'first') String? first,
    @JsonKey(name: 'last') String? last,
    @JsonKey(name: 'prev') String? prev,
    @JsonKey(name: 'next') String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}
