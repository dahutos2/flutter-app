import 'package:flutter/material.dart';

class Lesson4 extends StatelessWidget {
  const Lesson4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloodType = [
      "A型",
      "B型",
      "AB型",
      "O型"
    ];
    return Scaffold(
        appBar: AppBar(
        title: const Text('課題4'),
    ),
      body: GridView.builder(
        padding: const EdgeInsets.all(4),
        itemCount: bloodType.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return bloodTile(bloodType[index]);
        }
        )
    );
  }
  Widget bloodTile(String bloodType){
    return ColoredBox(
        color: Colors.lightBlue,
        child: Center(
        child: Text(
            bloodType,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20),
        )
        )
    );
  }
}