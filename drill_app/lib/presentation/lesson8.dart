
import 'package:flutter/material.dart';

import 'home.dart';

class Lesson8 extends StatelessWidget {
  const Lesson8({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題8'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('ダイアログ表示'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: const Text('タイトル'),
                          content: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: const Text("ダイアログの内容を表示させます。"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => const Home(),
                                ),
                                );
                              },
                            )
                          ],
                        );
                      }
                  );
                },
              ),
            ]
          ),
        ),
      ),
    );
  }
}