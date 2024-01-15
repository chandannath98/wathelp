import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class HomepageActions extends StatelessWidget {
  const HomepageActions({
    super.key,
    this.profilePic,
    required this.isAuthenticated,
    required this.showRegisterButton,
    required this.onLoginClick,
    required this.onRegisterClick,
    required this.onProfileClick,
    required this.onNotificationClick,
  });

  final bool showRegisterButton;
  final bool isAuthenticated;
  final String? profilePic;
  final VoidCallback onLoginClick;
  final VoidCallback onRegisterClick;
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
              onPressed: (!showRegisterButton) ? onLoginClick : onRegisterClick,
              icon: SvgIcon(
                Assets.loginIcon,
                size: 22,
                color: context.color?.primary,
              ),
              label: Text(
                (!showRegisterButton)
                    ? LocaleKeys.login.tr()
                    : LocaleKeys.create_account.tr(),
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
              color: context.color?.extra,
            ),
          ),
          8.width,
          InkWell(
            onTap: onProfileClick,
            child: CircleAvatar(
              radius: 16,
              foregroundImage: NetworkImage(
                profilePic ?? "",
              ),
              backgroundImage: const AssetImage(
                Assets.profilePlaceholder,
              ),
            ),
          ),
        ],
        8.width,
      ],
    );
  }
}
