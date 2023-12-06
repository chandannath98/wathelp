import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/features/find_jobs/views/filter_job.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class FindJobController extends GetxController {
  final _jobRepo = JobsRepository();
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final searchController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    searchController.addListener(() {
      currentQuery = currentQuery.copyWith(query: searchController.text);
    });
    locationController.addListener(() {
      currentQuery = currentQuery.copyWith(location: locationController.text);
    });
    fetchJobsWithCurrentQuery();
  }

  @override
  void onClose() {
    searchController.dispose();
    locationController.dispose();
    super.onClose();
  }

  SearchQuery currentQuery = const SearchQuery();
  List<Job> currentJobList = [];

  goToFilterPage() async {
    final res = await Get.to(
      () => AdvanceJobFilter(
        currentQuery: currentQuery,
      ),
    );
    if (res is SearchQuery) {
      currentQuery = res;
      if (res.query == null) searchController.clear();
      if (res.location == null) locationController.clear();
      update();
    }
  }

  fetchJobsWithCurrentQuery() async {
    try {
      setLoadingStatus(true);
      final searchRes = await _jobRepo.searchJobs(query: currentQuery);
      if (searchRes.isSuccess) {
        currentJobList = searchRes.data!;
        setLoadingStatus();
      } else {
        showToastError(searchRes.errorMsg);
        setLoadingStatus();
      }
    } catch (e, s) {
      setLoadingStatus();
      log("#FindJobError", error: e, stackTrace: s);
    }
  }

  onJobClick(String jobSlug) => Get.to(
        () => JobDetailsScreen(
          jobSlug: jobSlug,
        ),
      );
}
