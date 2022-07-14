import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'common/web_view_page.dart';
import 'home.dart';

class Lesson18 extends StatelessWidget {
  const Lesson18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題18'),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('戻る'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('公式HP'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                launch(
                  'https://flutter.dev',
                  forceSafariVC: true,
                  forceWebView: true,
                );
              },
            ),
            ListTile(
              title: const Text('IR情報'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      title: 'IR情報',
                      url: 'https://flutter.dev',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('採用情報'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text("採用情報"),
                      content: const Text("外部サイトへ遷移します。よろしいですか?"),
                      actions: <Widget>[
// ボタン領域
                        TextButton(
                          child: const Text(
                            "Cancel",
                            style: TextStyle(color: Colors.grey),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              launch(
                                'https://flutter.dev',
                                forceSafariVC: false,
                                forceWebView: false,
                              );
                            }),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('課題'),
      ),
    );
  }
}
