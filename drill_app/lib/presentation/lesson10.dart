
import 'package:flutter/material.dart';

class Lesson10 extends StatelessWidget {
  const Lesson10({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題10'),
      ),
      body: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: const [
            Center(
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text("1"),
                    )
                  )
              )
            ),
            Center(
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: ColoredBox(
                        color: Colors.green,
                        child: Center(
                          child: Text("2"),
                        )
                    )
                )
            ),
            Center(
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: ColoredBox(
                        color: Colors.deepOrangeAccent,
                        child: Center(
                          child: Text("3"),
                        )
                    )
                )
            ),
          ]
      )
    );
  }
}