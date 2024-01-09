import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/notification/controller/notification_controller.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          "Notifications",
        ),
      ),
      body: GetBuilder(
          init: NotificationsController(),
          builder: (controller) {
            return ListView.separated(
              itemCount: 25,
              padding: vertical10 + horizontal12,
              separatorBuilder: (context, index) => 8.height,
              itemBuilder: (context, index) => const NotificationTile(),
            );
          }),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.color?.theme,
      horizontalTitleGap: 0,
      title: Text(
        "Notification",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.text.titleSmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: context.color?.opposite,
        ),
      ),
      subtitle: Text(
        "This is the data from notification that just got here.",
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
