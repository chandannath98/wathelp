import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/authentication/controllers/registration_controller.dart';
import 'package:jobpilot/src/global/widgets/social_login_button.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key, this.showLoginButton = true});

  final bool showLoginButton;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: RegistrationController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 2,
            automaticallyImplyLeading: !showLoginButton,
            backgroundColor: context.color?.theme,
            title: SvgPicture.asset(
              Assets.appLogoSvg,
            ),
            actions: [
              if (showLoginButton)
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
                      LocaleKeys.login.tr(),
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
            onFacebookSignUpClick: controller.initiateFacebookRegistration,
            onGoogleSignUpClick: controller.initiateGoogleRegistration,
            firstNameValidator: [isRequired],
            lastNameValidator: [isRequired],
            emailValidator: [isRequired, isEmail],
            passwordValidator: [isRequired, tooShort8],
            confirmPasswordValidator: [isRequired, tooShort8],
          ),
        );
      },
    );
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

  final List<Validation>? firstNameValidator;
  final List<Validation>? lastNameValidator;
  final List<Validation>? emailValidator;
  final List<Validation>? passwordValidator;
  final List<Validation>? confirmPasswordValidator;

  final ValueChanged<UserType> onFacebookSignUpClick;
  final ValueChanged<UserType> onGoogleSignUpClick;
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

  bool hidePassword = true;
  bool hideConfirmPassword = true;
  bool agreeTermsPolicy = false;
  UserType selectedUserType = UserType.candidate;

  Future<void> onCreateAccountClicked() async {
    rmvFocus();
    if (!agreeTermsPolicy) {
      showToastWarning("Please agree with our privacy policy!");
      return;
    }

    if (_formKey.currentState?.validate() ?? false) {
      if (passwordController.text != confirmPasswordController.text) {
        showToastWarning("Passwords didn't matched!");
        return;
      }
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
  void dispose() {
    firstNameFocus.dispose();
    lastNameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();
    super.dispose();
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
                    LocaleKeys.create_account.tr(),
                    style: context.text.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.color?.opposite,
                    ),
                  ),
                  24.height,
                  //TODO: Uncomment it when the [Company] system is implemented!
/*                   DecoratedBox(
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
                  16.height, */
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          focusNode: firstNameFocus,
                          controller: firstNameController,
                          validator: FieldValidator.validate(
                            name: "First name",
                            widget.firstNameValidator,
                          ),
                          decoration: const InputDecoration(
                            hintText: "First name...",
                            prefix: Padding(padding: horizontal6),
                            contentPadding: EdgeInsets.only(left: 0),
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
                          validator: FieldValidator.validate(
                            name: "Last name",
                            widget.lastNameValidator,
                          ),
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
                    keyboardType: TextInputType.emailAddress,
                    validator: FieldValidator.validate(
                      name: LocaleKeys.email.tr(),
                      widget.emailValidator,
                    ),
                    onFieldSubmitted: (value) => passwordFocus.requestFocus(),
                    decoration: InputDecoration(
                      hintText: "${LocaleKeys.email_address.tr()}...",
                      prefix: const Padding(padding: horizontal6),
                      contentPadding: const EdgeInsets.only(left: 0),
                    ),
                  ),
                  12.height,
                  TextFormField(
                    obscureText: hidePassword,
                    focusNode: passwordFocus,
                    controller: passwordController,
                    validator: FieldValidator.validate(
                      name: LocaleKeys.password.tr(),
                      widget.passwordValidator,
                    ),
                    onFieldSubmitted: (value) =>
                        confirmPasswordFocus.requestFocus(),
                    decoration: InputDecoration(
                      hintText: "${LocaleKeys.password.tr()}...",
                      prefix: const Padding(padding: horizontal6),
                      contentPadding: const EdgeInsets.only(left: 0),
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          hidePassword = !hidePassword;
                        }),
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  12.height,
                  TextFormField(
                    obscureText: hideConfirmPassword,
                    focusNode: confirmPasswordFocus,
                    controller: confirmPasswordController,
                    validator: FieldValidator.validate(
                      name: LocaleKeys.confirm_password.tr(),
                      widget.confirmPasswordValidator,
                    ),
                    onFieldSubmitted: (value) =>
                        onCreateAccountClicked.withOverlay(),
                    decoration: InputDecoration(
                      hintText: "${LocaleKeys.confirm_password.tr()}...",
                      prefix: const Padding(padding: horizontal6),
                      contentPadding: const EdgeInsets.only(left: 0),
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          hideConfirmPassword = !hideConfirmPassword;
                        }),
                        icon: Icon(
                          hideConfirmPassword
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
                                  text:
                                      "${LocaleKeys.i_have_read_and_agree_with.tr()} ",
                                  style: context.text.bodyMedium,
                                  children: [
                                    TextSpan(
                                      text: LocaleKeys.privacy_policy.tr(),
                                      style: context.text.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: context.color?.primary,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " ${LocaleKeys.and.tr()} ",
                                    ),
                                    TextSpan(
                                      text:
                                          "${LocaleKeys.terms_conditions.tr()}.",
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
                      label: Text(
                        LocaleKeys.create_account.tr(),
                      ),
                    ),
                  ),
                  10.height,
                  Center(
                    child: Text(
                      LocaleKeys.or.tr(),
                    ),
                  ),
                  10.height,
                  SocialButton(
                    text: LocaleKeys.login_with_facebook.tr(),
                    iconLink:
                        "https://img.icons8.com/?size=48&id=118497&format=png",
                    onTap: (() async =>
                            widget.onFacebookSignUpClick(selectedUserType))
                        .withOverlay,
                  ),
                  10.height,
                  SocialButton(
                    text: LocaleKeys.login_with_google.tr(),
                    iconLink:
                        "https://img.icons8.com/?size=48&id=17949&format=png",
                    onTap: (() async =>
                            widget.onGoogleSignUpClick(selectedUserType))
                        .withOverlay,
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
