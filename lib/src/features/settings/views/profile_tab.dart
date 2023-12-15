import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import '../controllers/profile_settings_controller.dart';
import '../../../global/widgets/app/custom_titled_drop_down.dart';
import 'widgets/save_changes_button.dart';

class ProfileInformationTab extends StatelessWidget {
  const ProfileInformationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: horizontal16,
        child: GetBuilder(
            init: ProfileSettingsController(),
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  24.height,
                  CustomTitledDropdownField(
                    title: "Nationality",
                    onChange: (value) {},
                    fieldList: const [
                      (value: 1, title: "Education"),
                      (value: 2, title: "Vacation"),
                      (value: 3, title: "Chillox"),
                      (value: 4, title: "Finished"),
                    ],
                  ),
                  16.height,
                  Text("Date of Birth"),
                  6.height,
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "DD/MM/YYYY",
                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                        color: context.color?.extra,
                      ),
                    ),
                  ),
                  16.height,
                  CustomTitledDropdownField(
                    title: "Gender",
                    onChange: (value) {},
                    fieldList: const [
                      (value: 1, title: "Education"),
                      (value: 2, title: "Vacation"),
                      (value: 3, title: "Chillox"),
                      (value: 4, title: "Finished"),
                    ],
                  ),
                  16.height,
                  CustomTitledDropdownField(
                    title: "Marital State",
                    onChange: (value) {},
                    fieldList: const [
                      (value: 1, title: "Education"),
                      (value: 2, title: "Vacation"),
                      (value: 3, title: "Chillox"),
                      (value: 4, title: "Finished"),
                    ],
                  ),
                  16.height,
                  CustomTitledDropdownField(
                    title: "Education",
                    onChange: (value) {},
                    fieldList: const [
                      (value: 1, title: "Education"),
                      (value: 2, title: "Vacation"),
                      (value: 3, title: "Chillox"),
                      (value: 4, title: "Finished"),
                    ],
                  ),
                  16.height,
                  CustomTitledDropdownField(
                    title: "Experience",
                    onChange: (value) {},
                    fieldList: const [
                      (value: 1, title: "Education"),
                      (value: 2, title: "Vacation"),
                      (value: 3, title: "Chillox"),
                      (value: 4, title: "Finished"),
                    ],
                  ),
                  16.height,
                  Text("Biography"),
                  6.height,
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.sizeOf(context).height * 0.3,
                    ),
                    child: TextFormField(
                      minLines: 15,
                      maxLines: null,
                      decoration: const InputDecoration(
                        hintMaxLines: 15,
                        hintText: "Write down your biography here. Let the\n"
                            "employers know who you are...",
                      ),
                    ),
                  ),
                  16.height,
                  SaveChangesButton(
                    onTap: () {},
                  ),
                  24.height,
                ],
              );
            }),
      ),
    );
  }
}
