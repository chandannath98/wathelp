import 'package:flutter/material.dart';

import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SelectableItem {
  final String key;
  final String text;
  final Widget? icon;

  const SelectableItem({
    this.icon,
    required this.key,
    required this.text,
  });
}

class HorizontalItemSelector extends StatelessWidget {
  const HorizontalItemSelector({
    super.key,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorColor,
    required this.currentSelectedKey,
    required this.itemList,
    required this.onItemTap,
  }) : assert(itemList.length != 0, "Selectable item list can't be empty!");

  final String currentSelectedKey;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? indicatorColor;
  final List<SelectableItem> itemList;
  final ValueChanged<String> onItemTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final singleItemWidth = constraints.maxWidth / (itemList.length);
      final selectedIndex =
          itemList.indexWhere((element) => element.key == currentSelectedKey);
      return Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          AnimatedPositioned(
            left: singleItemWidth * selectedIndex,
            duration: const Duration(milliseconds: 320),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: indicatorColor ?? Colors.blue,
              ),
              child: SizedBox(
                height: constraints.maxHeight,
                width: singleItemWidth,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: itemList
                .map((e) => SelectedItemWidget(
                      item: e,
                      isSelected: currentSelectedKey == e.key,
                      selectedColor: selectedColor ?? Colors.white,
                      unselectedColor: unselectedColor ?? Colors.black,
                      onTap: onItemTap,
                    ))
                .toList(),
          ),
        ],
      );
    });
  }
}

class SelectedItemWidget extends StatelessWidget {
  const SelectedItemWidget({
    super.key,
    required this.item,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.onTap,
  });
  final bool isSelected;
  final SelectableItem item;
  final Color selectedColor;
  final Color unselectedColor;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Theme(
        data: context.theme.copyWith(
          iconTheme: IconThemeData(
            color: isSelected ? selectedColor : unselectedColor,
          ),
        ),
        child: DefaultTextStyle(
          style: context.text.bodyMedium?.copyWith(
                color: isSelected ? selectedColor : unselectedColor,
              ) ??
              TextStyle(
                color: isSelected ? selectedColor : unselectedColor,
              ),
          child: InkWell(
            borderRadius: BorderRadius.circular(6),
            onTap: () => onTap(item.key),
            child: Padding(
              padding: all6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (item.icon != null) ...[
                    item.icon!,
                    8.width,
                  ],
                  Flexible(
                    child: Text(
                      item.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
