
import 'package:flutter/material.dart';

import 'common/web_view_page.dart';
import 'lesson1.dart';
import 'lesson10.dart';
import 'lesson11.dart';
import 'lesson12.dart';
import 'lesson13.dart';
import 'lesson15.dart';
import 'lesson16A.dart';
import 'lesson17.dart';
import 'lesson18.dart';
import 'lesson19.dart';
import 'lesson2.dart';
import 'lesson21/service_swipe_page.dart';
import 'lesson3.dart';
import 'lesson4.dart';
import 'lesson5.dart';
import 'lesson6.dart';
import 'lesson7.dart';
import 'lesson8.dart';
import 'lesson9.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題一覧'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('課題1'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson1(),
                  ),
                  );
                  },
              ),
              ElevatedButton(
                child: const Text('課題2'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson2(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題3'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson3(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題4'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson4(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題5'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson5(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題6'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson6(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題7'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson7(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題8'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson8(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題9'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson9(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題10'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson10(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題11'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson11(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題12'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson12(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題13'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson13(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題15'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson15(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題16'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson16A(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題17'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson17(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題18'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson18(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題19'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const Lesson19(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('課題21'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const ServiceSwipePage(),
                  ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('web_view'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      title:'webView',
                      url: 'https://flutter.dev'
                    ),
                  ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}