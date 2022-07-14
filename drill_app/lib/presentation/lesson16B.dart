import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'home.dart';

class Lesson16B extends StatelessWidget {
  const Lesson16B(this.image, {Key? key}) : super(key: key);
  final XFile image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題16B'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.file(
              File(image.path),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('画像が選択されました!'),
          ),
          ElevatedButton(
            child: const Text('完了'),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
