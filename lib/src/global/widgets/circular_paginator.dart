import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class CircularPaginatorWidget extends StatelessWidget {
  const CircularPaginatorWidget({
    super.key,
    this.onBackwardClick,
    this.onForwardClick,
    this.keyDimension = 48,
    this.controlColor = Colors.white,
    this.unselectedControlColor = Colors.transparent,
    this.selectedControlForegroundColor = Colors.black,
    this.unselectedControlForegroundColor = Colors.grey,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.transparent,
    this.selectedForegroundColor = Colors.white,
    this.unselectedForegroundColor = Colors.black,
    required this.actionsList,
  });

  final double keyDimension;
  final Color controlColor;
  final Color unselectedControlColor;
  final Color selectedControlForegroundColor;
  final Color unselectedControlForegroundColor;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedForegroundColor;
  final Color unselectedForegroundColor;
  final List<(bool isSelected, Widget widget, VoidCallback? onTap)> actionsList;
  final VoidCallback? onBackwardClick;
  final VoidCallback? onForwardClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PaginatorKey(
          onTap: onBackwardClick,
          isSelected: onBackwardClick != null,
          keyDimension: keyDimension,
          selectedColor: controlColor,
          unselectedColor: unselectedControlColor,
          selectedForegroundColor: selectedControlForegroundColor,
          unselectedForegroundColor: unselectedControlForegroundColor,
          child: const Padding(
            padding: all12,
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        8.width,
        Expanded(
          child: SizedBox(
            height: keyDimension,
            child: ListView.builder(
              itemCount: actionsList.length,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final selectedRecord = actionsList[index];
                return PaginatorKey(
                  onTap: selectedRecord.$3,
                  isSelected: selectedRecord.$1,
                  selectedColor: selectedColor,
                  unselectedColor: unselectedColor,
                  selectedForegroundColor: selectedForegroundColor,
                  unselectedForegroundColor: unselectedForegroundColor,
                  child: selectedRecord.$2,
                );
              },
            ),
          ),
        ),
        8.width,
        PaginatorKey(
          onTap: onForwardClick,
          isSelected: onForwardClick != null,
          keyDimension: keyDimension,
          selectedColor: controlColor,
          unselectedColor: unselectedColor,
          selectedForegroundColor: unselectedForegroundColor,
          unselectedForegroundColor: Colors.grey,
          child: const Padding(
            padding: all12,
            child: Icon(
              Icons.arrow_forward,
            ),
          ),
        ),
      ],
    );
  }
}

class PaginatorKey extends StatelessWidget {
  const PaginatorKey({
    super.key,
    this.onTap,
    this.keyDimension = 48,
    required this.child,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.selectedForegroundColor,
    required this.unselectedForegroundColor,
  });

  final Widget child;
  final bool isSelected;
  final VoidCallback? onTap;
  final double keyDimension;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedForegroundColor;
  final Color unselectedForegroundColor;

  @override
  Widget build(BuildContext context) {
    final selected = isSelected && onTap != null;
    return Theme(
      data: context.theme.copyWith(
        iconTheme: IconThemeData(
          color: selected ? selectedForegroundColor : unselectedForegroundColor,
        ),
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color:
              isSelected ? selectedForegroundColor : unselectedForegroundColor,
        ),
        child: InkWell(
          onTap: onTap,
          child: SizedBox.square(
            dimension: keyDimension,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (selected) ? selectedColor : unselectedColor,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
