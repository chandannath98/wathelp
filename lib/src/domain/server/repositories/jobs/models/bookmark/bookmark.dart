import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'status') bool? status,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, Object?> json) =>
      _$BookmarkFromJson(json);
}
