import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../language/language.dart';

part 'language_response.freezed.dart';
part 'language_response.g.dart';

@freezed
class LanguageResponse with _$LanguageResponse {
  const factory LanguageResponse({
    @JsonKey(name: 'current_language') int? currentLanguage,
    @JsonKey(name: 'languages') List<Language>? languages,
  }) = _LanguageResponse;

  factory LanguageResponse.fromJson(Map<String, Object?> json) =>
      _$LanguageResponseFromJson(json);
}
