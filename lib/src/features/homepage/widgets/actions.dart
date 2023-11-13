import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class HomepageActions extends StatelessWidget {
  const HomepageActions({
    super.key,
    required this.isAuthenticated,
    required this.profilePic,
    required this.onLoginClick,
    required this.onProfileClick,
    required this.onNotificationClick,
  });

  final bool isAuthenticated;
  final String profilePic;
  final VoidCallback onLoginClick;
  final VoidCallback onProfileClick;
  final VoidCallback onNotificationClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!isAuthenticated)
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: onLoginClick,
              icon: SvgIcon(
                loginIcon,
                size: 22,
                color: context.color?.primary,
              ),
              label: Text(
                login,
                style: context.text.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          ),
        if (isAuthenticated) ...[
          IconButton(
            onPressed: onNotificationClick,
            icon: Icon(
              Icons.notifications_active_outlined,
              color: context.color?.secondaryAccent,
            ),
          ),
          8.width,
          InkWell(
            onTap: onProfileClick,
            child: CircleAvatar(
              radius: 16,
              foregroundImage: NetworkImage(
                profilePic,
              ),
            ),
          ),
        ],
        8.width,
      ],
    );
  }
}
