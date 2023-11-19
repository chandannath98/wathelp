import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/global/widgets/horizontal_item_selector.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: context.color?.theme,
        title: SvgPicture.asset(
          Assets.appLogoSvg,
        ),
        actions: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () {
                Get.back();
              },
              icon: SvgIcon(
                Assets.loginIcon,
                size: 22,
                color: context.color?.primary,
              ),
              label: Text(
                login,
                style: context.text.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const RegistrationSectionWidget(),
    );
  }
}

class RegistrationSectionWidget extends StatefulWidget {
  const RegistrationSectionWidget({super.key});

  @override
  State<RegistrationSectionWidget> createState() =>
      _RegistrationSectionWidgetState();
}

class _RegistrationSectionWidgetState extends State<RegistrationSectionWidget> {
  String selectedItemKey = "Candidate";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: horizontal16 + vertical8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Create new account",
                  style: context.text.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.color?.opposite,
                  ),
                ),
                16.height,
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.color?.theme,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: all16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "CREATE ACCOUNT AS A",
                          style: context.text.bodyLarge?.copyWith(
                            color: context.color?.extra,
                          ),
                        ),
                        12.height,
                        SizedBox(
                          height: 42,
                          child: HorizontalItemSelector(
                            currentSelectedKey: selectedItemKey,
                            selectedColor: context.color?.theme,
                            unselectedColor: context.color?.primaryAccent,
                            indicatorColor: context.color?.primaryAccent,
                            onItemTap: (value) {
                              setState(() {
                                selectedItemKey = value;
                              });
                            },
                            itemList: const [
                              SelectableItem(
                                key: "Candidate",
                                text: "Candidate",
                                icon: SvgIcon(Assets.candidateUserIcon),
                              ),
                              SelectableItem(
                                key: "Employer",
                                text: "Employer",
                                icon: SvgIcon(Assets.employerBuildingIcon),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.height,
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "First name...",
                        ),
                      ),
                    ),
                    12.width,
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Last name...",
                        ),
                      ),
                    ),
                  ],
                ),
                12.height,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email address...",
                  ),
                ),
                12.height,
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
                12.height,
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirm password...",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
                12.height,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            visualDensity: VisualDensity.compact,
                            onChanged: (value) {},
                          ),
                          3.width,
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                text: "I have read & agreed with Jobpilot ",
                                style: context.text.bodyMedium,
                                children: [
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style: context.text.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: context.color?.primary,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: " and ",
                                  ),
                                  TextSpan(
                                    text: "Terms & Conditions.",
                                    style: context.text.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: context.color?.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                12.height,
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    label: Text(
                      "Create Account",
                    ),
                  ),
                ),
                10.height,
                Center(
                  child: Text(
                    "OR",
                  ),
                ),
                10.height,
                SocialButton(
                  text: "Sign up with Facebook",
                  iconLink:
                      "https://img.icons8.com/?size=48&id=118497&format=png",
                  onTap: () {},
                ),
                10.height,
                SocialButton(
                  text: "Sign up with Google",
                  iconLink:
                      "https://img.icons8.com/?size=48&id=17949&format=png",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.text,
    required this.iconLink,
    required this.onTap,
  });
  final String text;
  final String iconLink;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color?.theme,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 0.5,
              color: context.color?.extra ?? Colors.grey,
            ),
          ),
          child: Padding(
            padding: vertical6 + horizontal12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  child: Image.network(
                    iconLink,
                  ),
                ),
                12.width,
                Flexible(
                  child: Text(
                    text,
                    style: context.text.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
