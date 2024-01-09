import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/currency/currency_data.dart';
import 'package:jobpilot/src/features/menu/controllers/currency_controller.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class ChooseCurrencyScreen extends StatelessWidget {
  const ChooseCurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.currency_list.tr(),
        ),
      ),
      body: GetBuilder(
          init: CurrencyController(),
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
                    if (controller.currencyList != null)
                      for (CurrencyData currency in controller.currencyList!)
                        CountryListTile(
                          isSelected:
                              StaticStorage.selectedCurrency?.id == currency.id,
                          name: "${currency.name}",
                          symbol: currency.symbol ?? "\$",
                          onTap: (() async =>
                                  await controller.onCurrencySelect(currency))
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
    required this.symbol,
    required this.isSelected,
    required this.onTap,
  });

  final String name;
  final String symbol;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      visualDensity: VisualDensity.compact,
      contentPadding: horizontal12 + horizontal12 + vertical10,
      leading: SizedBox.square(
        dimension: 24,
        child: FittedBox(
          child: Padding(
            padding: all3,
            child: Text(
              symbol,
              style: context.text.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
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
