import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:sample_app/my_page/my_page_notifier.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton();

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<MyPageNotifier>();
    return Container(
        child: Column(
          children: [
            Text(
          '今日の体重を追加しよう',
        ),
        IconButton(
          icon: Icon(
            Icons.add_circle,
            color: Colors.blue,
          ),
          onPressed: () {
            notifier.popUpForm();
            },
        )
          ]
        )
    );
  }
}