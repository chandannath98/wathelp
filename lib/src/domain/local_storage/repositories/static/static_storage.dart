import 'dart:convert';

import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';

class StaticStorage {
  final config = HiveConfig();
  static const expireDateKey = "#EXPIRE_DATE";
  static const expirePeriod = Duration(days: 3);
  updateExpireDate() =>
      config.staticBox.put(expireDateKey, DateTime.now().toIso8601String());

  DateTime? get expireDate {
    final date = config.staticBox.get(expireDateKey);
    return date == null ? null : DateTime.parse(date);
  }

  bool get isExpired =>
      expireDate == null ||
      expireDate!.isBefore(DateTime.now().subtract(expirePeriod));

// Tags.
  static const popularTagsKey = '#POPULAR_TAGS';
  savePopularTags(List<PopularTag> data) async {
    updateExpireDate();
    await config.staticBox.put(
      popularTagsKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<PopularTag>? get popularTag {
    final List? string = config.staticBox.get(popularTagsKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => PopularTag.fromJson(json.decode(type)))
            .toList()
        : null;
  }

  clearStatic() async {}
}
