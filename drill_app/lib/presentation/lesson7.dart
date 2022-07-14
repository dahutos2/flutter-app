
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Lesson7 extends StatelessWidget {
  const Lesson7({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題7'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('アプリ内ブラウザ'),
                onPressed: () {
                  launch(
                  'https://flutter.dev',
                    forceSafariVC: true,
                    forceWebView: true,
                  );
                  },
              ),
              ElevatedButton(
                child: const Text('外部ブラウザ'),
                onPressed: () {
                  launch(
                  'https://flutter.dev',
                    forceSafariVC: false,
                    forceWebView: false,
                  );
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}