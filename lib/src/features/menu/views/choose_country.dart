import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/country/country_data.dart';
import 'package:jobpilot/src/features/menu/controllers/country_controller.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class ChooseCountryScreen extends StatelessWidget {
  const ChooseCountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.country_list.tr(),
        ),
      ),
      body: GetBuilder(
          init: CountryController(),
          builder: (controller) {
            if ((controller.isLoading)) {
              return const Center(
                child: LoadingIndicator(),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    8.height,
                    if (controller.countryList != null)
                      for (CountryData country in controller.countryList!)
                        CountryListTile(
                          isSelected:
                              StaticStorage.selectedCountry?.id == country.id,
                          name: "${country.name}",
                          onTap: (() async =>
                                  await controller.onCountrySelect(country))
                              .withOverlay,
                        ),
                  ],
                ),
              );
            }
          }),
    );
  }
}

class CountryListTile extends StatelessWidget {
  const CountryListTile({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      visualDensity: VisualDensity.compact,
      contentPadding: horizontal12 + horizontal12 + vertical10,
      leading: const Icon(
        Icons.flag_outlined,
      ),
      title: Text(
        name,
        style: context.text.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: (isSelected)
          ? const Icon(
              Icons.check,
              color: Colors.green,
            )
          : null,
    );
  }
}
