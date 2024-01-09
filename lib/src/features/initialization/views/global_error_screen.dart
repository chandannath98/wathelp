import 'package:flutter/material.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class GlobalErrorPage extends StatelessWidget {
  const GlobalErrorPage({
    super.key,
    this.error,
    this.stackTrace,
    required this.onRefreshCall,
  });

  final Object? error;
  final StackTrace? stackTrace;
  final VoidCallback onRefreshCall;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Error",
            ),
            Text(error.toString()),
            24.height,
            Text(
              stackTrace.toString(),
            )
          ],
        ),
      ),
    );
  }
}
