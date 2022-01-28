import 'package:flutter/material.dart';

class Ptj extends StatelessWidget {
  const Ptj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("アルバイト"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                CheckBoxWidget(),
                Text("着替え"),
              ],
            ),
            Row(
              children: [
                CheckBoxWidget(),
                Text("弁当箱"),
              ],),
            Row(
              children: [
                CheckBoxWidget(),
                Text("メモ"),
              ],
            ),
            Row(
              children: [
                CheckBoxWidget(),
                Text("筆記用具"),],),
            Row(
              children: [
                CheckBoxWidget(),
                Text("水筒"),],
            ),],),),);
  }
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {


    return Checkbox(

      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
