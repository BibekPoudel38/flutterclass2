import 'package:day2/my_container.dart';
import 'package:flutter/material.dart';

class MyListBuilderWidget extends StatelessWidget {
  const MyListBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Example"),
      ),
      body: Container(
        color: Colors.yellow,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
          ],
        ),
      ),
    );
  }
}
