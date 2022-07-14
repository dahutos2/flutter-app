import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lesson17 extends StatelessWidget {
  const Lesson17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題17'),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Life',
                style: GoogleFonts.itim(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: 0.4,
                        child: const Text(
                          'is',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Icon(Icons.accessibility),
                    ],
                  ),
                ),
              ),
              TextSpan(
                text: 'beautiful',
                style: GoogleFonts.itim(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
