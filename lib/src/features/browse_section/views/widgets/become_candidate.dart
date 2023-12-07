import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class RegisterNowSection extends StatelessWidget {
  const RegisterNowSection({
    super.key,
    required this.onActionClick,
  });

  final VoidCallback onActionClick;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.color?.extra ?? Colors.grey,
        image: const DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1629131726692-1accd0c53ce0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA2fHxjb21wdXRlcnxlbnwwfHwwfHx8MA%3D%3D",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: AspectRatio(
        aspectRatio: 428 / 272,
        child: Padding(
          padding: horizontal16 + vertical16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Become a Candidate",
                style: context.text.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              16.height,
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus a dolor convallis efficitur.",
                style: context.text.titleLarge,
              ),
              16.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: 180,
                    child: ElevatedButton.icon(
                      onPressed: onActionClick,
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      label: const Text(
                        "Register Now",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
