// ignore_for_file: file_namesflutter --version
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'lesson16B.dart';

class Lesson16A extends StatelessWidget {
  const Lesson16A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題16A'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('デバイスのライブラリから取得'),
              onPressed: () async {
                final XFile? image =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lesson16B(image),
                    ),
                  );
                }
              },
            ),
            ElevatedButton(
              child: const Text('カメラで撮影する'),
              onPressed: () async {
                final XFile? image = await _picker.pickImage(
                  source: ImageSource.camera,
                );
                if (image != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lesson16B(image),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
