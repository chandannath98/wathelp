import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/repositories/account/account_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/account/notification/notification_data/notification_data.dart';
import 'package:jobpilot/src/domain/server/repositories/account/notification/paginated_notifications_response/paginated_notifications_response.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class NotificationsController extends GetxController with BaseControllerSystem {
  @override
  void onReady() {
    super.onReady();
    fetchNotificationList();
  }

  /* Pagination */
  final singlePageSize = 10;
  final _accountRepo = AccountRepository();
  final pageScrollController = ScrollController();
  PaginatedNotificationsResponse? paginationData;
  List<NotificationData>? get currentCompanyList => paginationData?.data;

  int get currentPageIndex => paginationData?.currentPage ?? 1;
  bool get needPaginationControl =>
      !isLoading &&
      paginationData?.lastPage != null &&
      paginationData!.lastPage! > 1;

  fetchNotificationList({
    bool isRefreshing = false,
    int? pageIndex,
  }) async {
    try {
      rmvFocus();
      if (!isRefreshing) setLoadingStatus(true);

      final searchRes = await _accountRepo.getPaginatedNotifications(
        pageSize: singlePageSize,
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
      log("#fetchNotificationListError", error: e, stackTrace: s);
    }
  }
}
