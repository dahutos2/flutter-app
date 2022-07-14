import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightCartDelete extends StatelessWidget {
  const WeightCartDelete(
      this.DeleteOnTap
      );

  final DeleteOnTap;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('本当に削除してもよろしいでか？'),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 24,
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: ElevatedButton(
                child: const Text('削除'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[400],
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  DeleteOnTap();
                },
              ),
            )
          ],
        )
      ],
    );
  }
}