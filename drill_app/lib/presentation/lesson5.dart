
import 'package:flutter/material.dart';

class Lesson5 extends StatelessWidget {
  const Lesson5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageList = [
      'images/beautiful_view_1.jpeg',
      'images/beautiful_view_2.jpeg',
      'images/beautiful_view_3.jpeg',
      'images/beautiful_view_4.jpeg'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題5'),
        ),
        body: GridView.builder(
            padding: const EdgeInsets.only(
                left: 8,
                right: 8),
            itemCount: imageList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
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
      child: Image.asset(imageList)
    );
  }
}