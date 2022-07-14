import 'package:flutter/material.dart';

class Lesson3 extends StatelessWidget {
  const Lesson3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textList = [
      "今日のニュース",
      "昨日のニュース",
      "先週のニュース",
      "1ヶ月前のニュース",
      "1年前のニュース",
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題3'),
        ),
        body: ListView.builder(
            itemCount: textList.length,
            itemBuilder: (BuildContext context, int index) {
              return newsTile(textList[index]);
            }
        )
    );
  }
  Widget newsTile(String text) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(color: Colors.grey),
        ),
        height: 80,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("  " + text),
              const Text("詳細へ      ")
            ]
        )
    );
  }
}