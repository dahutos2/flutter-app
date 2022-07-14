import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lesson19 extends StatelessWidget {
  const Lesson19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題19'),
      ),
      body: Center(
        child: Lottie.network(
          'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
        ),
      ),
    );
  }
}
