import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: use_key_in_widget_constructors
class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image == null
            ? Container()
            : Container(child: Image.file(File(image!.path))),
        Container(
          child: Center(
            child: ElevatedButton.icon(
              onPressed: () async {
                final ImagePicker _picker = ImagePicker();
                // Pick an image
                final XFile? img =
                    await _picker.pickImage(source: ImageSource.camera);
                setState(() {
                  image = img;
                });

                // Capture a photo
              },
              icon: Icon(Icons.camera),
              label: const Text("Take a photo"),
            ),
          ),
        ),
      ],
    );
  }
}
