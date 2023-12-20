import 'package:flutter/material.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/applied_jobs/job/applied_job.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class JobActivityStatusWidget extends StatelessWidget {
  const JobActivityStatusWidget({
    super.key,
    required this.status,
  });

  final JobStatus status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: switch (status) {
        JobStatus.active => [
            const Icon(
              Icons.check,
              size: 18,
              color: Colors.green,
            ),
            3.width,
            Text(
              "Active",
              style: context.text.bodySmall?.copyWith(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        JobStatus.expired => [
            const Icon(
              Icons.close,
              size: 18,
              color: Colors.grey,
            ),
            3.width,
            Text(
              "Expired",
              style: context.text.bodySmall?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        JobStatus.unknown => <Widget>[],
        JobStatus.pending => [
            const Icon(
              Icons.access_time_rounded,
              size: 18,
              color: Colors.grey,
            ),
            3.width,
            Text(
              "Pending",
              style: context.text.bodySmall?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
      },
    );
  }
}
