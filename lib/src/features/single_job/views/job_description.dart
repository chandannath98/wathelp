import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class JobDescriptionHtmlWidget extends StatelessWidget {
  const JobDescriptionHtmlWidget({
    super.key,
    required this.name,
    required this.htmlText,
    required this.isBookmarked,
    required this.onApplyClick,
    required this.onBookmarkCallback,
  });

  final String name;
  final bool isBookmarked;
  final String htmlText;
  final VoidCallback onApplyClick;
  final VoidCallback onBookmarkCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "Job Description: $name",
        ),
      ),
      body: Padding(
        padding: horizontal16,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Html(
                  data: htmlText,
                ),
              ),
            ),
            Padding(
              padding: vertical8,
              child: Row(
                children: [
                  Expanded(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        onPressed: onApplyClick,
                        icon: const Icon(Icons.arrow_back),
                        label: const Text(
                          "Apply Now",
                        ),
                      ),
                    ),
                  ),
                  8.width,
                  InkWell(
                    onTap: onBookmarkCallback,
                    borderRadius: BorderRadius.circular(4),
                    child: Card(
                      child: Padding(
                        padding: all8,
                        child: Icon(
                          isBookmarked
                              ? Icons.bookmark
                              : Icons.bookmark_outline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
