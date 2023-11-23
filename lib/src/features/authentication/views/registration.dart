import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/features/authentication/controllers/registration_controller.dart';
import 'package:jobpilot/src/global/widgets/horizontal_item_selector.dart';
import 'package:jobpilot/src/global/widgets/social_login_button.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: RegistrationController(),
        builder: (controller) {
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
            body: RegistrationSectionWidget(
              onCreateAccount: controller.createAccount,
              onFacebookSignUpClick: () {},
              onGoogleSignUpClick: () {},
            ),
          );
        });
  }
}

class RegistrationSectionWidget extends StatefulWidget {
  const RegistrationSectionWidget({
    super.key,
    this.firstNameValidator,
    this.lastNameValidator,
    this.emailValidator,
    this.passwordValidator,
    this.confirmPasswordValidator,
    required this.onCreateAccount,
    required this.onFacebookSignUpClick,
    required this.onGoogleSignUpClick,
  });

  final FormFieldValidator<String>? firstNameValidator;
  final FormFieldValidator<String>? lastNameValidator;
  final FormFieldValidator<String>? emailValidator;
  final FormFieldValidator<String>? passwordValidator;
  final FormFieldValidator<String>? confirmPasswordValidator;

  final VoidCallback onFacebookSignUpClick;
  final VoidCallback onGoogleSignUpClick;
  final Future<String?> Function({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
    required UserType userType,
  }) onCreateAccount;

  @override
  State<RegistrationSectionWidget> createState() =>
      _RegistrationSectionWidgetState();
}

class _RegistrationSectionWidgetState extends State<RegistrationSectionWidget> {
  final _formKey = GlobalKey<FormState>();

  final firstNameFocus = FocusNode();
  final firstNameController = TextEditingController();
  final lastNameFocus = FocusNode();
  final lastNameController = TextEditingController();
  final emailFocus = FocusNode();
  final emailController = TextEditingController();
  final passwordFocus = FocusNode();
  final passwordController = TextEditingController();
  final confirmPasswordFocus = FocusNode();
  final confirmPasswordController = TextEditingController();

  bool showPassword = false;
  bool showConfirmPassword = true;
  bool agreeTermsPolicy = false;
  UserType selectedUserType = UserType.candidate;

  Future<void> onCreateAccountClicked() async {
    rmvFocus();
    if (!agreeTermsPolicy) {
      showToastWarning("Please agree with our privacy policy!");
      return;
    }
    if (_formKey.currentState?.validate() ?? false) {
      await widget.onCreateAccount(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        userType: selectedUserType,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: horizontal16 + vertical8,
            child: Form(
              key: _formKey,
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
                              currentSelectedKey: selectedUserType.name,
                              selectedColor: context.color?.theme,
                              unselectedColor: context.color?.primaryAccent,
                              indicatorColor: context.color?.primaryAccent,
                              onItemTap: (value) {
                                setState(() {
                                  selectedUserType = UserType.values.firstWhere(
                                    (element) => element.name == value,
                                  );
                                });
                              },
                              itemList: UserType.values
                                  .map(
                                    (e) => SelectableItem(
                                      key: e.name,
                                      icon: switch (e) {
                                        UserType.candidate => const SvgIcon(
                                            Assets.candidateUserIcon,
                                          ),
                                        UserType.company => const SvgIcon(
                                            Assets.employerBuildingIcon,
                                          ),
                                      },
                                      text: e.name.capitalizeFirst!,
                                    ),
                                  )
                                  .toList(),
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
                          focusNode: firstNameFocus,
                          controller: firstNameController,
                          decoration: const InputDecoration(
                            hintText: "First name...",
                          ),
                          onFieldSubmitted: (value) =>
                              lastNameFocus.requestFocus(),
                        ),
                      ),
                      12.width,
                      Expanded(
                        child: TextFormField(
                          focusNode: lastNameFocus,
                          controller: lastNameController,
                          onFieldSubmitted: (value) =>
                              emailFocus.requestFocus(),
                          decoration: const InputDecoration(
                            hintText: "Last name...",
                          ),
                        ),
                      ),
                    ],
                  ),
                  12.height,
                  TextFormField(
                    focusNode: emailFocus,
                    controller: emailController,
                    onFieldSubmitted: (value) => passwordFocus.requestFocus(),
                    decoration: const InputDecoration(
                      hintText: "Email address...",
                    ),
                  ),
                  12.height,
                  TextFormField(
                    obscureText: showPassword,
                    focusNode: passwordFocus,
                    controller: passwordController,
                    onFieldSubmitted: (value) =>
                        confirmPasswordFocus.requestFocus(),
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          showPassword = !showPassword;
                        }),
                        icon: Icon(
                          showPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  12.height,
                  TextFormField(
                    obscureText: showConfirmPassword,
                    focusNode: confirmPasswordFocus,
                    controller: confirmPasswordController,
                    onFieldSubmitted: (value) =>
                        onCreateAccountClicked.withOverlay(),
                    decoration: InputDecoration(
                      hintText: "Confirm password...",
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          showConfirmPassword = !showConfirmPassword;
                        }),
                        icon: Icon(
                          showConfirmPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
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
                              value: agreeTermsPolicy,
                              visualDensity: VisualDensity.compact,
                              onChanged: (value) {
                                setState(() {
                                  agreeTermsPolicy = value!;
                                });
                              },
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
                      onPressed: onCreateAccountClicked.withOverlay,
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        "Create Account",
                      ),
                    ),
                  ),
                  10.height,
                  const Center(
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
      ),
    );
  }
}
