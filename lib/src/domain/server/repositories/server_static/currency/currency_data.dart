import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_data.g.dart';
part 'currency_data.freezed.dart';

@freezed
class CurrencyData with _$CurrencyData {
  const factory CurrencyData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'symbol') String? symbol,
  }) = _CurrencyData;

  factory CurrencyData.fromJson(Map<String, Object?> json) =>
      _$CurrencyDataFromJson(json);
}
