import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'シフト提出アプリ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("シフト提出アプリ"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('アプリ内ブラウザ'),
                onPressed: () {
                  launch(
                    'https://shift-admin-dahutos.herokuapp.com',
                    forceSafariVC: true,
                    forceWebView: true,
                  );
                },
              ),
              ElevatedButton(
                child: const Text('外部ブラウザ'),
                onPressed: () {
                  launch(
                    'https://shift-admin-dahutos.herokuapp.com',
                    forceSafariVC: false,
                    forceWebView: false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}