import 'package:freezed_annotation/freezed_annotation.dart';

enum UserType {
  @JsonValue("candidate")
  candidate,
  @JsonValue("company")
  company,
}
