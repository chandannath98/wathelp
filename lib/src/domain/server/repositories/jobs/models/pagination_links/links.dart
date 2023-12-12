import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'links.freezed.dart';

part 'links.g.dart';

@freezed
class Links with _$Links {
  const factory Links({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'active') bool? active,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}
