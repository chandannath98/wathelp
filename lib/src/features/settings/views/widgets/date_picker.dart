import 'dart:developer';

import 'package:flutter/material.dart';

Future<({String? text, DateTime date})?> pickDate(
  BuildContext context, {
  DateTime? lastDate,
  DateTime? firstDate,
  String? Function(DateTime date)? converter,
}) async {
  try {
    final selectedDate = await showDatePicker(
      context: context,
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime.now(),
    );
    if (selectedDate != null) {
      final text = converter?.call(selectedDate);
      return (text: text, date: selectedDate);
    }
  } catch (e, s) {
    log("#CustomDatePickerError", error: e, stackTrace: s);
  }
}

/* 
showScrollingDatePicker(BuildContext context) async {
  return showDialog<DateTime?>(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      DateTime? selectedDateTime;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Expanded(
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.dateAndTime,
                          onDateTimeChanged: (value) {
                            selectedDateTime = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.back<DateTime>();
                            },
                            child: const Text(
                              "Cancel",
                            ),
                          ),
                          const SizedBox(width: 12),
                          TextButton(
                            onPressed: () {
                              Get.back<DateTime>(result: selectedDateTime);
                            },
                            child: const Text(
                              "Select",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

showBoxyScrollingPicker(BuildContext context,
    {DateTime? initailDate, DateTime? startingDate, DateTime? endDate}) async {
  return showDialog<DateTime?>(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return BoxyPickerWidget(
        initialDT: initailDate,
        startingDate: startingDate,
        endDate: endDate,
      );
    },
  );
}

///The return type for this widget is [DateTime?]. That means when selected or done, it should return [DateTime] or [null].
class BoxyPickerWidget extends StatelessWidget {
  const BoxyPickerWidget({
    super.key,
    this.initialDT,
    this.startingDate,
    this.endDate,
  });

  final DateTime? initialDT;
  final DateTime? startingDate;
  final DateTime? endDate;
  @override
  Widget build(BuildContext context) {
    DateTime selectedDateTime = initialDT ?? DateTime.now();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            color: Colors.grey.shade200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      "Record Time",
                      style:
                          context.text.bodyMedium?.copyWith(color: Colors.grey),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 225,
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: initialDT,
                    mode: CupertinoDatePickerMode.dateAndTime,
                    minimumDate: startingDate,
                    maximumDate: endDate ??
                        DateTime.now().add(
                          const Duration(minutes: 1),
                        ),
                    onDateTimeChanged: (value) {
                      selectedDateTime = value;
                    },
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.back<DateTime>();
                          },
                          child: SizedBox.expand(
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: context.text.bodyMedium
                                    ?.copyWith(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.back<DateTime>(result: selectedDateTime);
                          },
                          highlightColor: Colors.green.shade100,
                          child: SizedBox.expand(
                            child: Center(
                              child: Text(
                                "Selected",
                                style: context.text.bodyMedium
                                    ?.copyWith(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
} */
