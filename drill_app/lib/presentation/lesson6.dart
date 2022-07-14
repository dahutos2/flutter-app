
import 'package:flutter/material.dart';

class Lesson6 extends StatelessWidget {
  const Lesson6({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageList = [
      'https://molasoft-article.com/flutter-drill/images/mola-red.png',
      'https://molasoft-article.com/flutter-drill/images/mola-blue.png',
      'https://molasoft-article.com/flutter-drill/images/mola-yellow.png',
      'https://molasoft-article.com/flutter-drill/images/mola-green.png'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題6'),
        ),
        body: GridView.builder(
            padding: const EdgeInsets.only(
              left: 4,
              right: 4,
              top: 8
            ),
            itemCount: imageList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
              childAspectRatio: 1.35,
            ),
            itemBuilder: (context, index) {
              return imageTile(imageList[index]);
            }
        )
    );
  }
  Widget imageTile(String imageList){
    return Center(
        child: Image.network(imageList)
    );
  }
}