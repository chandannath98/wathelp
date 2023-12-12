import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_size.freezed.dart';
part 'team_size.g.dart';

@freezed
class TeamSize with _$TeamSize {
  const factory TeamSize({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _TeamSize;

  factory TeamSize.fromJson(Map<String, Object?> json) =>
      _$TeamSizeFromJson(json);
}
