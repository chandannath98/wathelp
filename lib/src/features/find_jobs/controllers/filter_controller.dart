import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/jobs/job_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/category/job_category.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_type/job_type.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

typedef SalaryRangeSelectable = ({
  int id,
  int? min,
  int? max,
  String? title,
});

class JobFilterController extends GetxController {
  JobFilterController({SearchQuery? searchQuery})
      : currentQuery = searchQuery ?? const SearchQuery();

  final _jobStorage = JobStorage();
  final _jobRepo = JobsRepository();
  bool isLoading = false;

  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  SearchQuery currentQuery;

  // Set job type!
  List<JobType> availableJobTypes = [];
  // Set salary range!
  int? selectedRangeOptionId = 5;
  List<SalaryRangeSelectable> selectableSalaryRange = const [
    (id: 0, min: 10, max: 100, title: null),
    (id: 1, min: 100, max: 1000, title: null),
    (id: 2, min: 1000, max: 10000, title: null),
    (id: 3, min: 10000, max: 100000, title: null),
    (id: 4, min: 100000, max: null, title: "\$100000 Up"),
    (id: 5, min: null, max: null, title: "Custom"),
  ];
  // Set job Category!
  List<JobCategory> availableJobCategories = [];

  @override
  onInit() {
    super.onInit();
    setAvailableJobTypeList();
    setAvailableJobCategoryList();
  }

  setCurrentQuery(SearchQuery newQuery) {
    currentQuery = newQuery;
    update();
  }

  setRemoteJobStatus(bool status) {
    currentQuery = currentQuery.copyWith(isRemote: status ? 1 : 0);
    update();
  }

  setCurrentJobCategory(int? categoryId) {
    currentQuery = currentQuery.copyWith(category: categoryId);
    update();
  }

  setCurrentJobType(int? jobTypeId) {
    currentQuery = currentQuery.copyWith(jobType: jobTypeId);
    update();
  }

  setSelectedSalaryRangeOption(int? value) {
    selectedRangeOptionId = value;
    update();
  }

  setMinimumSalary(int? value) {
    currentQuery = currentQuery.copyWith(minPrice: value);
    update();
  }

  setMaximumSalary(int? value) {
    currentQuery = currentQuery.copyWith(maxPrice: value);
    update();
  }

  setAvailableJobTypeList() async {
    try {
      if (_jobStorage.isExpired || _jobStorage.jobTypes == null) {
        setLoadingStatus(true);
        final response = await _jobRepo.fetchJobTypes();
        if (response.isSuccess) {
          availableJobTypes = response.data!;
          _jobStorage.saveJobTypes(response.data!);
        } else {
          showToastError(response.errorMsg);
        }
        setLoadingStatus();
      } else {
        availableJobTypes = _jobStorage.jobTypes!;
        update();
      }
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FetchJobTypesError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  setAvailableJobCategoryList() async {
    try {
      if (_jobStorage.isExpired || _jobStorage.jobCategories == null) {
        setLoadingStatus(true);
        final response = await _jobRepo.fetchJobCategories();
        if (response.isSuccess) {
          availableJobCategories = response.data!;
          _jobStorage.saveJobCategories(response.data!);
        } else {
          showToastError(response.errorMsg);
        }
        setLoadingStatus();
      } else {
        availableJobCategories = _jobStorage.jobCategories!;
        update();
      }
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FetchJobTypesError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}
