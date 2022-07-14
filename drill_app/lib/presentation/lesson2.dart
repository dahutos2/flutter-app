import 'package:flutter/material.dart';

class Lesson2 extends StatelessWidget {
  const Lesson2({Key? key}) : super(key: key);

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
        title: const Text('課題2'),
      ),
      body: ListView.builder(
        itemCount: textList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(color: Colors.grey),
              ),
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("  " + textList[index]),
                    const Text("詳細へ      ")
                  ]
                    )
          );
        }
        )
    );
  }
}