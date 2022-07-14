import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/widgets/weight_card_delete.dart';
import 'package:sample_app/widgets/weight_register_pop_up.dart';
import 'package:state_notifier/state_notifier.dart';

part 'my_page_notifier.freezed.dart';

@freezed
abstract class MyPageState with _$MyPageState {
  const factory MyPageState({
    String? weight,
    String? comment,
    @Default([]) List<Map<String?, String?>> record,
  }) = _MyPageState;
}

class MyPageNotifier extends StateNotifier<MyPageState> with LocatorMixin {
  MyPageNotifier({
    required this.context,
  }) : super(const MyPageState());

  final BuildContext context;

  @override
  void dispose() {
    print("notifier!!");
    super.dispose();
  }

  @override
  void initState() {}

  void popUpForm() {
    showDialog(
      context: context,
      builder: (context) {
        return WeightRegisterPopUp(_saveWeight, _saveComment, _register);
      },
    );
  }

  void popUpEditForm(index){
    void _edit(){
      final dateTime = DateTime.now();
      final day = "${dateTime.year}年${dateTime.month}月${dateTime.day}日";
      final formRecord = {
        "weight": state.weight,
        "comment": state.comment,
        "day": day,
      };
      final newRecord = List<Map<String?, String?>>.from(state.record);
      newRecord[index] = formRecord;
      state = state.copyWith(record: newRecord);
      print(state.record);
      Navigator.pop(context);
    }
    showDialog(
      context: context,
      builder: (context) {
        return WeightRegisterPopUp(_saveWeight, _saveComment, _edit);
      },
    );
  }

  void popUpDeleteForm(index){
    void _delete(){
      final newRecord = List<Map<String?, String?>>.from(state.record);
      newRecord.removeAt(index);
      state = state.copyWith(record: newRecord);
      print(state.record);
      Navigator.pop(context);
    }
    showDialog(
      context: context,
      builder: (context) {
        return WeightCartDelete(_delete);
      },
    );
  }
  void _saveComment(String value){
    state = state.copyWith(comment: value);
    print(state.comment);
  }

  void _saveWeight(String value) {
    state = state.copyWith(weight: value);
    print(state.weight);
  }

  void _register(){
    final dateTime = DateTime.now();
    final day = "${dateTime.year}年${dateTime.month}月${dateTime.day}日";
    final formRecord = {
      "weight": state.weight,
      "comment": state.comment,
      "day": day,
    };
    print(formRecord);
    final newRecord = List<Map<String?, String?>>.from(state.record);
    newRecord.add(formRecord);
    state = state.copyWith(record: newRecord);
    print(state.record);
    Navigator.pop(context);
  }
}