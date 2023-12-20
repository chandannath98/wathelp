import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class AppLogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppLogoAppBar({
    super.key,
    this.centerTitle,
    this.actions,
    this.autoLeading,
  });

  final bool? centerTitle;
  final bool? autoLeading;
  final List<Widget>? actions;

  AppBar get _appBar => AppBar(
        centerTitle: centerTitle ?? false,
        automaticallyImplyLeading: autoLeading ?? false,
        title: SvgPicture.asset(Assets.appLogoSvg),
        actions: [...?actions],
      );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        appBarTheme: context.theme.appBarTheme.copyWith(
          backgroundColor: context.color?.theme,
        ),
      ),
      child: _appBar,
    );
  }

  @override
  Size get preferredSize => _appBar.preferredSize;
}
