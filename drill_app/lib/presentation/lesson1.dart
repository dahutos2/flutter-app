

import 'package:flutter/material.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題1'),
      ),
        body: SizedBox(
          height: 200,
          child: Row(
            children: [
              Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              child: const Center(
                child: Text("Main"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child:
                  Container(
                    color: Colors.redAccent,
                    child: const Center(
                      child: Text("A"),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child:
                    Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text("B"),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    Container(
                      color: Colors.green,
                      child: const Center(
                          child: Text("C")
                      ),
                    )
                )
              ]
            ),
          ),
            ]
          )
        )
    );
  }
}