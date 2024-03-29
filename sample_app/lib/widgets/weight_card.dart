import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:sample_app/my_page/my_page_notifier.dart';

class WeightCard extends StatelessWidget {
  const WeightCard(this.records, this.index);

  final records;
  final index;

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<MyPageNotifier>();
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(10, 10),
          ),
        ],
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: 100,
            child: Text(
              '${records[index]['weight']}Kg',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                        child: Icon(Icons.calendar_today),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        records[index]['day'],
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      child: Icon(Icons.comment),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      records[index]['comment'],
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70, //横幅
                height: 30,
                child:
                ElevatedButton(
                  child: Text('編集'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    notifier.popUpEditForm(index);
                  },
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SizedBox(
                width: 70, //横幅
                height: 30,
                child:
                ElevatedButton(
                  child: Text("削除"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    notifier.popUpDeleteForm(index);
                  },
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
            ],
          ),
    ],
      ),
    );
  }
}