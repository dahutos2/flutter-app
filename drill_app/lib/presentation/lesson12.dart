
import 'package:flutter/material.dart';

class Lesson12 extends StatelessWidget {
  const Lesson12({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題12'),
        ),
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: const Text('角丸'),
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.03
                      ),
                      color: Colors.blue,
                    )
                    ),
                Container(
                    alignment: Alignment.center,
                    child: const Text('角丸',),
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.06
                      ),
                      color: Colors.blue,
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    child: const Text('丸'),
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.25,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    )
                )
              ],
            )
        )
    );
  }
}