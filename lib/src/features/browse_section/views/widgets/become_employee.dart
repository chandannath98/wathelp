import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class BecomeEmployeeSection extends StatelessWidget {
  const BecomeEmployeeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.color?.extra ?? Colors.grey,
        image: const DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1617834659281-1666d3262af4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjE2fHxibHVlJTIwbWFuJTIwd2VsY29tZXxlbnwwfHwwfHx8MA%3D%3D",
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
                "Become a Employee",
                style: context.text.titleLarge?.copyWith(
                  color: context.color?.theme,
                  fontWeight: FontWeight.bold,
                ),
              ),
              16.height,
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus a dolor convallis efficitur.",
                style: context.text.titleLarge?.copyWith(
                  color: context.color?.theme,
                ),
              ),
              16.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: 180,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: context.color?.primary,
                        backgroundColor: context.color?.theme,
                      ),
                      onPressed: () {},
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
