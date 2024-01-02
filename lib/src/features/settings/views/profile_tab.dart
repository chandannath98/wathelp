import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/profile_settings/candidate_profile_settings/candidate_profile_setting_data.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';

import '../controllers/profile_settings_controller.dart';
import '../../../global/widgets/app/custom_titled_drop_down.dart';
import 'widgets/save_changes_button.dart';

class ProfileInformationTab extends StatelessWidget {
  const ProfileInformationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProfileSettingsController(),
        builder: (controller) {
          return controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: horizontal16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        24.height,
                        //No nationality data in API.
                        /* CustomTitledDropdownField(
                          title: "Nationality",
                          onChange: (value) {},
                          fieldList: const [
                            (value: 1, title: "Education"),
                            (value: 2, title: "Vacation"),
                            (value: 3, title: "Chillox"),
                            (value: 4, title: "Finished"),
                          ],
                        ), */
                        //Date of birth moved to personal Section bcz of api incompatibility.
                        /* 16.height,
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
                        16.height,*/
                        CustomTitledDropdownField(
                          title: "Gender",
                          value: controller.data?.gender,
                          onChange: (value) =>
                              controller.onGenderSelect(value!),
                          fieldList: Gender.values
                              .map(
                                (e) => (value: e, title: e.name.upperCaseFirst),
                              )
                              .toList(),
                        ),
                        16.height,
                        CustomTitledDropdownField(
                          title: "Marital State",
                          value: controller.data?.maritalStatus,
                          onChange: (value) =>
                              controller.onMaritalStatusSelect(value!),
                          fieldList: MaritalStatus.values
                              .map(
                                (e) => (value: e, title: e.name.upperCaseFirst),
                              )
                              .toList(),
                        ),
                        //These two fields are available in personal data!
                        /* 16.height,
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
                        ), */
                        //Not from UI.
                        16.height,
                        CustomTitledDropdownField(
                          title: "Profession",
                          onChange: (value) =>
                              controller.onProfessionSelect(value!),
                          value: controller.data?.professionId,
                          fieldList: controller.data?.professionList
                              ?.map(
                                (e) => (value: e.id!, title: e.name!),
                              )
                              .toList(),
                        ),
                        16.height,
                        Text("Biography"),
                        6.height,
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: MediaQuery.sizeOf(context).height * 0.3,
                          ),
                          child: TextFormField(
                            maxLines: null,
                            minLines: 15,
                            controller: controller.bioController,
                            decoration: const InputDecoration(
                              hintMaxLines: 15,
                              hintText:
                                  "Write down your biography here. Let the\n"
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
                    ),
                  ),
                );
        });
  }
}
