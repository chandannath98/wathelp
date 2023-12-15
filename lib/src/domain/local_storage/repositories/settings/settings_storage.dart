import 'dart:convert';

import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data.dart';

class SettingsStorage {
  final config = HiveConfig();
  static const expireDateKey = "#EXPIRE_DATE";
  static const expirePeriod = Duration(days: 3);
  updateExpireDate() =>
      config.settingsBox.put(expireDateKey, DateTime.now().toIso8601String());

  DateTime? get expireDate {
    final date = config.settingsBox.get(expireDateKey);
    return date == null ? null : DateTime.parse(date);
  }

  bool get isExpired =>
      expireDate == null ||
      expireDate!.isBefore(DateTime.now().subtract(expirePeriod));

// Resumes.
  static const resumeListKey = '#CANDIDATE_RESUMES';
  saveResumeList(List<ResumeData> data) async {
    updateExpireDate();
    await config.settingsBox.put(
      resumeListKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<ResumeData>? get resumeList {
    final List? string = config.settingsBox.get(resumeListKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => ResumeData.fromJson(json.decode(type)))
            .toList()
        : null;
  }

  clearSettings() async {}
}
