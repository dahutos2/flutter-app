
import 'package:flutter/material.dart';

class Lesson11 extends StatelessWidget {
  const Lesson11({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題11'),
      ),
      body: Center(
        child:ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 320,
            minWidth: 200,
          ),
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
                child: const Text('横幅はいつも一緒'),
                onPressed: () {}
                )
        )
        )
      )
    );
  }
}