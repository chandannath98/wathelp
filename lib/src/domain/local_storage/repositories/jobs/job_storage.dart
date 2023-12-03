import 'dart:convert';
import 'dart:developer';

import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/category/job_category.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_type/job_type.dart';

class JobStorage {
  final config = HiveConfig();
  static const expirePeriod = Duration(days: 3);
  static const typesKey = '#JOB_TYPES';
  static const categoryKey = '#JOB_CATEGORY';
  static const expireDateKey = "#EXPIRE_DATE";

  updateExpireDate() =>
      config.jobBox.put(expireDateKey, DateTime.now().toIso8601String());

  DateTime? get expireDate {
    final date = config.jobBox.get(expireDateKey);
    return date == null ? null : DateTime.parse(date);
  }

  bool get isExpired =>
      expireDate == null ||
      expireDate!.isBefore(DateTime.now().subtract(expirePeriod));

  saveJobTypes(List<JobType> data) {
    updateExpireDate();
    config.jobBox.put(
      typesKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<JobType>? get jobTypes {
    log("Types fetched from local!");
    final List? string = config.jobBox.get(typesKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => JobType.fromJson(json.decode(type)))
            .toList()
        : null;
  }

  saveJobCategories(List<JobCategory> data) {
    updateExpireDate();
    config.jobBox.put(
      categoryKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<JobCategory>? get jobCategories {
    log("Category fetched from local!");
    final List? string = config.jobBox.get(categoryKey);
    return string != null
        ? (string.cast<String>())
            .map((category) => JobCategory.fromJson(json.decode(category)))
            .toList()
        : null;
  }

  clearJobs() async {}
}
