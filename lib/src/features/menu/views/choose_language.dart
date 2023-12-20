import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/language/language/language.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/localization/language_controller.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Language",
        ),
      ),
      body: GetBuilder(
          init: LanguageController(),
          builder: (controller) {
            return (controller.isLoading)
                ? const Center(
                    child: LoadingIndicator(),
                  )
                : Column(
                    children: [
                      8.height,
                      if (controller.serverLanguageList != null)
                        for (Language lang in controller.serverLanguageList!)
                          LanguageListTile(
                            isSelected: lang.id == controller.currentSelectedId,
                            name: "${lang.name}",
                            onTap: () {},
                          ),
                    ],
                  );
          }),
    );
  }
}

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
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
        Icons.language_rounded,
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
