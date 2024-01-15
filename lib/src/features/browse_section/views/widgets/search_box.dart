import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SearchBoxWidget<T> extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
    this.hasFilterData,
    this.searchController,
    this.locationController,
    this.onFilterClick,
    this.suggestionsCallback,
    this.onLocationSelect,
    required this.onSearchClick,
    required this.showFilterButton,
  });

  final bool? hasFilterData;
  final bool showFilterButton;
  final VoidCallback? onFilterClick;
  final VoidCallback? onSearchClick;
  final TextEditingController? searchController;
  final TextEditingController? locationController;
  //For suggestions
  final ValueChanged<T>? onLocationSelect;
  final FutureOr<List<T>> Function(String value)? suggestionsCallback;

  @override
  Widget build(BuildContext context) {
    Widget searchBoxField;
    if (suggestionsCallback != null) {
      searchBoxField = TypeAheadField<T>(
        focusNode: FocusNode(),
        controller: locationController,
        builder: (context, controller, focusNode) => SearchTextFieldRow(
          hintText: "${LocaleKeys.location.tr()}...",
          focusNode: focusNode,
          controller: controller,
          icon: Icon(
            Icons.share_location_sharp,
            color: context.color?.primary,
          ),
        ),
        decorationBuilder: (context, child) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 3,
              bottom: 12,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: br6,
                color: context.color?.theme,
              ),
              child: child,
            ),
          );
        },
        itemBuilder: (context, value) {
          return ListTile(
            title: Text(
              value.toString(),
            ),
          );
        },
        onSelected: onLocationSelect,
        suggestionsCallback: suggestionsCallback!,
      );
    } else {
      searchBoxField = SearchTextFieldRow(
        hintText: "${LocaleKeys.location.tr()}...",
        controller: locationController,
        icon: Icon(
          Icons.share_location_sharp,
          color: context.color?.primary,
        ),
      );
    }
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
              hintText: "${LocaleKeys.search.tr()}...",
              controller: searchController,
              icon: Icon(
                Icons.search,
                color: context.color?.primary,
              ),
            ),
            6.height,
            searchBoxField,
            6.height,
            if (showFilterButton)
              ElevatedButton.icon(
                onPressed: onFilterClick,
                icon: const Icon(Icons.filter_list_rounded),
                label: const Text(advanceFilter),
                style: ElevatedButton.styleFrom(
                  backgroundColor: (hasFilterData ?? false)
                      ? context.color?.primary.withOpacity(0.15)
                      : context.color?.background,
                  foregroundColor: context.color?.extraText,
                ),
              ),
            ElevatedButton.icon(
              onPressed: onSearchClick,
              icon: const Icon(Icons.search),
              label: Text(
                LocaleKeys.search.tr().tr(),
              ),
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
    this.focusNode,
    this.controller,
    required this.icon,
    required this.hintText,
  });

  final Widget icon;
  final String hintText;
  final FocusNode? focusNode;
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
            focusNode: focusNode,
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
