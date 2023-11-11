import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onItemClick,
    required this.navbarItems,
  });

  final int currentIndex;
  final ValueChanged<int> onItemClick;
  final List<(Widget icon, String level)> navbarItems;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.color;
    return SafeArea(
      child: Card(
        elevation: 5,
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: SizedBox(
          height: 70,
          child: Padding(
            padding: vertical8 + horizontal16,
            child: Row(
              children: navbarItems.indexed
                  .map(
                    (item) => Expanded(
                      child: InkWell(
                        onTap: () => onItemClick(item.$1),
                        child: NavItem(
                          icon: item.$2.$1,
                          label: item.$2.$2,
                          isSelected: item.$1 == currentIndex,
                          selectedColor: colorTheme?.primary ?? Colors.black,
                          unselectedColor: colorTheme?.extra ?? Colors.black,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );

    // return BottomAppBar(
    //   elevation: 9,
    //   notchMargin: 6,
    //   clipBehavior: Clip.hardEdge,
    //   child: BottomNavigationBar(
    //     onTap: onItemClick,
    //     currentIndex: currentIndex,
    //     showUnselectedLabels: true,
    //     backgroundColor: colorTheme?.primary,
    //     selectedItemColor: colorTheme?.primary,
    //     unselectedItemColor: colorTheme?.extra,
    //     selectedLabelStyle: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w600,
    //       color: colorTheme?.primary,
    //     ),
    //     unselectedLabelStyle: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w500,
    //       color: colorTheme?.extraText,
    //     ),
    //     items: navbarItems
    //         .map((item) => BottomNavigationBarItem(
    //               icon: item.$1,
    //               label: item.$2,
    //             ))
    //         .toList(),
    //   ),
    // );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
  });

  final Widget icon;
  final String label;
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  Widget build(BuildContext context) {
    final fontWeight = isSelected ? FontWeight.w600 : FontWeight.w500;
    final color = isSelected ? selectedColor : unselectedColor;
    return Theme(
      data: context.theme.copyWith(
        iconTheme: IconThemeData(
          color: color,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: icon),
          3.height,
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.bodySmall?.copyWith(
                      color: color,
                      fontWeight: fontWeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
