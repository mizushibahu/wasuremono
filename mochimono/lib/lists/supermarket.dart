import 'package:flutter/material.dart';

class Supermarket extends StatelessWidget {
  const Supermarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("スーパー"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                CheckBoxWidget(),
                Text("買い物袋"),
              ],
            ),
            Row(
              children: [
                CheckBoxWidget(),
                Text("ポイントカード"),
              ],),
            Row(
              children: [
                CheckBoxWidget(),
                Text("リサイクルする品"),
              ],
            ),],
        ),),);
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
