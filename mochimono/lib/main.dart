import 'package:mochimono/lists/ptj.dart';
import 'package:mochimono/lists/school.dart';
import 'package:mochimono/lists/supermarket.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: "mochimono", home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("忘れ物防止"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("今日の予定はなんですか"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return School();
                            },
                          ));
                        },
                        icon: Icon(Icons.school),
                        label: Text("学校"),
                      ),
                      ElevatedButton.icon(
                        onPressed:  () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Ptj();
                            },
                          ));
                        },
                        icon: Icon(Icons.restaurant),
                        label: Text("アルバイト"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Supermarket();
                            },
                          ));
                        },
                        icon: Icon(Icons.local_grocery_store),
                        label: Text("スーパー"),

                   ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
