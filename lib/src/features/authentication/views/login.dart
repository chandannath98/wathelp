import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              onPressed: () {},
              icon: SvgIcon(
                Assets.loginIcon,
                size: 22,
                color: context.color?.primary,
              ),
              label: Text(
                createAccount,
                style: context.text.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const LoginSectionWidget(),
    );
  }
}

class LoginSectionWidget extends StatelessWidget {
  const LoginSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: horizontal16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Sign in",
                  style: context.text.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.color?.opposite,
                  ),
                ),
                24.height,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email address...",
                  ),
                ),
                10.height,
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
                5.height,
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            visualDensity: VisualDensity.compact,
                            onChanged: (value) {},
                          ),
                          const Expanded(
                            child: Text(
                              "Remember me",
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                      ),
                    ),
                  ],
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    label: Text(
                      "Sign In",
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
                  text: "Sign in with Facebook",
                  iconLink:
                      "https://img.icons8.com/?size=48&id=118497&format=png",
                  onTap: () {},
                ),
                10.height,
                SocialButton(
                  text: "Sign in with Google",
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
