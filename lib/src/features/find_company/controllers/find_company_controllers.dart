import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/company/company_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/company/company.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/company_query/company_query.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/search_response/response/paginated_company_list.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/server_static_repo.dart';
import 'package:jobpilot/src/features/single_company/views/open_jobs.dart';
import 'package:jobpilot/src/features/single_company/views/single_company.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class FindCompanyController extends GetxController {
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
    // setPopularSearchTags();
    fetchCompanyListWithCurrentQuery();
  }

  @override
  void onClose() {
    searchController.dispose();
    locationController.dispose();
    super.onClose();
  }

//NOTE: Used all over the application!
  static openCompanyPage(String userName) => Get.to(
        () => SingleCompanyDetailsScreen(
          companyUserName: userName,
        ),
      );

//NOTE: Used all over the application!
  static openOpenPositionsClick(String userName) => Get.to(
        () => SingleCompanyOpenJobsScreen(
          userName: userName,
        ),
      );

/*   final _staticStorage = StaticStorage();
  final _staticRepo = ServerStaticRepository();
  List<PopularTag>? get popularTags => _staticStorage.popularTag;
  setPopularSearchTags() async {
    try {
      final res = await _staticRepo.fetchPopularTags();
      if (res.isSuccess) {
        await _staticStorage.savePopularTags(res.data!);
        update();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#FetchPopularTagError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  } */

  /* Pagination */
  final singlePageSize = 10;
  final _companyRepo = CompanyRepository();
  final pageScrollController = ScrollController();
  PaginatedCompanyList? paginationData;
  List<Company>? get currentCompanyList => paginationData?.data;

  int get currentPageIndex => paginationData?.currentPage ?? 1;
  bool get needPaginationControl =>
      !isLoading &&
      paginationData?.lastPage != null &&
      paginationData!.lastPage! > 1;

  fetchCompanyListWithCurrentQuery({
    bool isRefreshing = false,
    int? pageIndex,
  }) async {
    try {
      rmvFocus();
      if (!isRefreshing) setLoadingStatus(true);
      final companyQuery = CompanyQuery(
        query: searchController.text,
        location: locationController.text,
      );
      final searchRes = await _companyRepo.fetchCompanyListData(
        pageSize: singlePageSize,
        companyQuery: companyQuery,
        pageIndex: pageIndex ?? currentPageIndex,
      );
      if (searchRes.isSuccess) {
        paginationData = searchRes.data!;
      } else {
        showToastError(searchRes.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FindCompanyError", error: e, stackTrace: s);
    }
  }
}
