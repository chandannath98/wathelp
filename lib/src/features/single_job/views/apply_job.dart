import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class ApplyJobScreen extends StatelessWidget {
  const ApplyJobScreen({super.key, required this.jobName});

  final String jobName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "Apply Job: $jobName",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: horizontal16,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    24.height,
                    Text(
                      "CV/Resume",
                      style: context.text.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.height,
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Choose resume...",
                      ),
                    ),
                    24.height,
                    Text(
                      "Cover Letter",
                      style: context.text.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.height,
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.sizeOf(context).height * 0.5,
                      ),
                      child: TextFormField(
                        minLines: 15,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Write down your biography here. "
                              "Let the employers know who you are...",
                          hintMaxLines: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                5.height,
                Padding(
                  padding: vertical3 + horizontal16,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        "Apply Now",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
