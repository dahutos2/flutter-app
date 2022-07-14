import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home.dart';

class Lesson15 extends StatelessWidget {
  const Lesson15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listPagesViewModel = [
      PageViewModel(
        title: 'First',
        bodyWidget: const Text(
          'アプリの説明です。',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        image: Center(
          child: Image.network(
            'https://molasoft-article.com/flutter-drill/images/mola-red.png',
            height: 175,
          ),
        ),
      ),
      PageViewModel(
        title: 'Second',
        bodyWidget: const Text(
          'アプリの説明の続きです',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        image: Center(
          child: Image.network(
            'https://molasoft-article.com/flutter-drill/images/mola-yellow.png',
            height: 175,
          ),
        ),
      ),
      PageViewModel(
        title: 'Third',
        bodyWidget: const Text(
          '最後のアプリの説明です。',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        image: Center(
          child: Image.network(
            'https://molasoft-article.com/flutter-drill/images/mola-blue.png',
            height: 175,
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題15'),
      ),
      body: IntroductionScreen(
        pages: listPagesViewModel,
        onDone: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
            (_) => false,
          );
        },
        onSkip: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
            (_) => false,
          );
        },
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Icon(Icons.navigate_next),
        done: const Text(
          '完了',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          activeColor: Colors.blueAccent,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
