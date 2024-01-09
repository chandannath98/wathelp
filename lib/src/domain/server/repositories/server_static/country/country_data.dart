import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_data.freezed.dart';
part 'country_data.g.dart';

@freezed
class CountryData with _$CountryData {
  const factory CountryData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'sortname') String? sortName,
    @JsonKey(name: 'status') int? status,
  }) = _CountryData;

  const CountryData._();

  @override
  String toString() => name ?? super.toString();

  factory CountryData.fromJson(Map<String, Object?> json) =>
      _$CountryDataFromJson(json);
}
