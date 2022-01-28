import 'package:flutter/material.dart';

class School extends StatelessWidget {
  const School({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学校"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                CheckBoxWidget(),
                Text("イヤホン"),
              ],
            ),
            Row(
              children: [
                CheckBoxWidget(),
                Text("充電器"),
              ],),
            Row(
              children: [
                CheckBoxWidget(),
                Text("パソコン"),
              ],
            ),
            Row(
              children: [
                CheckBoxWidget(),
                Text("組合員証"),

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
