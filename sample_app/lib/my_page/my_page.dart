import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/widgets/register_button.dart';
import 'package:sample_app/widgets/weight_card.dart';

import 'my_page_notifier.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<MyPageNotifier, MyPageState>(
          create: (context) =>
              MyPageNotifier(
                context: context,
              ),
        )
      ],
      child: MyPage(),
    );
  }


  @override
  Widget build(BuildContext context) {
    print('描画');
    return Scaffold(
      appBar: AppBar(
        title: Text('日々の体重を追加していくアプリ'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height - 200,
                child: Builder(
                  builder: (BuildContext context) {
                    final records =
                    context.select((MyPageState state) => state.record);
                    return ListView.builder(
                      itemCount: records.length,
                      itemBuilder: (BuildContext context, int index) {
                        return WeightCard(records, index);
                      },
                    );
                  },
                ),
        ),
              Builder(
                builder: (BuildContext context) {
                  return RegisterButton();
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}