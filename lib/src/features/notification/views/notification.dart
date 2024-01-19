import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/utilities/date_formats.dart';
import 'package:jobpilot/src/domain/server/repositories/account/notification/notification_data/notification_data.dart';
import 'package:jobpilot/src/features/notification/controller/notification_controller.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          LocaleKeys.notifications.tr(),
        ),
      ),
      body: GetBuilder(
        init: NotificationsController(),
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              if (controller.isLoading || controller.currentCompanyList != null)
                SliverPadding(
                  padding: horizontal16 + vertical8,
                  sliver: controller.isLoading
                      ? const SliverFillRemaining(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: LoadingIndicator(),
                          ),
                        )
                      : controller.currentCompanyList!.isEmpty
                          ? const SliverFillRemaining(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  "No company found!",
                                ),
                              ),
                            )
                          : SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final notification =
                                      controller.currentCompanyList![index];
                                  return Padding(
                                    padding: vertical6,
                                    child: NotificationTile(
                                      data: notification,
                                    ),
                                  );
                                },
                                childCount:
                                    controller.currentCompanyList!.length,
                              ),
                            ),
                ),
              if (controller.needPaginationControl)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: (vertical12 + horizontal16) + horizontal16,
                    child: CircularPaginatorWidget(
                      selectedIndex: controller.currentPageIndex,
                      scrollController: controller.pageScrollController,
                      selectedColor: context.color?.primary ?? Colors.blue,
                      controlColor: context.color?.theme ?? Colors.white,
                      actionsList: List.generate(
                        controller.paginationData!.lastPage!,
                        (index) => (index + 1),
                      )
                          .map(
                            (index) => (
                              index == controller.currentPageIndex,
                              Text((index <= 9) ? "0$index" : "$index"),
                              (index == controller.currentPageIndex)
                                  ? () {}
                                  : () => controller.fetchNotificationList(
                                        pageIndex: index,
                                      ),
                            ),
                          )
                          .toList(),
                      onForwardClick:
                          controller.paginationData?.nextPageUrl == null
                              ? null
                              : () => controller.fetchNotificationList(
                                  pageIndex: controller.currentPageIndex + 1),
                      onBackwardClick:
                          controller.paginationData?.prevPageUrl == null
                              ? null
                              : () => controller.fetchNotificationList(
                                    pageIndex: controller.currentPageIndex - 1,
                                  ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.data,
  });

  final NotificationData data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.color?.theme,
      horizontalTitleGap: 0,
      title: Text(
        data.data?.title ?? "",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.text.titleSmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: context.color?.opposite,
        ),
      ),
      subtitle: Text(
        "${LocaleKeys.created_time.tr()}: ${dMonthYT.format(data.createDate!)}",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.text.bodyMedium?.copyWith(
          color: context.color?.extra,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: br8,
      ),
      leading: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications_none_outlined,
          ),
        ],
      ),
    );
  }
}
