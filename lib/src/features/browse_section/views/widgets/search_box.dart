import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
    this.searchController,
    this.locationController,
    this.onFilterClick,
    required this.onSearchClick,
    required this.showFilterButton,
  });

  final bool showFilterButton;
  final VoidCallback? onFilterClick;
  final VoidCallback? onSearchClick;

  final TextEditingController? searchController;
  final TextEditingController? locationController;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: all12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchTextFieldRow(
              hintText: "$search...",
              controller: searchController,
              icon: Icon(
                Icons.search,
                color: context.color?.primary,
              ),
            ),
            6.height,
            SearchTextFieldRow(
              hintText: "$location...",
              controller: locationController,
              icon: Icon(
                Icons.share_location_sharp,
                color: context.color?.primary,
              ),
            ),
            6.height,
            if (showFilterButton)
              ElevatedButton.icon(
                onPressed: onFilterClick,
                icon: const Icon(Icons.filter_list_rounded),
                label: const Text(advanceFilter),
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.color?.background,
                  foregroundColor: context.color?.extraText,
                ),
              ),
            ElevatedButton.icon(
              onPressed: onSearchClick,
              icon: const Icon(Icons.search),
              label: const Text(search),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTextFieldRow extends StatelessWidget {
  const SearchTextFieldRow({
    super.key,
    this.controller,
    required this.icon,
    required this.hintText,
  });

  final Widget icon;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: all8,
          child: icon,
        ),
        6.width,
        Expanded(
          child: TextFormField(
            maxLines: 1,
            controller: controller,
            style: const TextStyle(height: 1),
            decoration: searchBoxInputDecoration.copyWith(
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
