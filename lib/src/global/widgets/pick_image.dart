import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: body_might_complete_normally_nullable
Future<File?> pickImage(BuildContext context) async {
  try {
    return await showModalBottomSheet<File>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const ImagePickerOptionWidget();
      },
    );
  } catch (e, s) {
    log("#ImagePickMethodError", error: e, stackTrace: s);
  }
}

class ImagePickerOptionWidget extends StatelessWidget {
  const ImagePickerOptionWidget({
    super.key,
  });

  _pickImage(BuildContext context, ImageSource source) async {
    File? image;
    final picker = ImagePicker();
    final res = await picker.pickImage(source: source);
    if (res != null) {
      image = File(res.path);
    }
    if (context.mounted) {
      Navigator.of(context).pop(image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                onTap: () => _pickImage(context, ImageSource.camera),
                leading: const Icon(
                  Icons.camera_alt_outlined,
                ),
                title: const Text(
                  "Pick a picture",
                ),
              ),
              ListTile(
                onTap: () => _pickImage(context, ImageSource.gallery),
                leading: const Icon(
                  Icons.photo_outlined,
                ),
                title: const Text(
                  "Choose from gallery",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
