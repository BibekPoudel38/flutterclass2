import 'package:day2/my_container.dart';
import 'package:flutter/material.dart';

class MySingleChildScrollWidget extends StatelessWidget {
  const MySingleChildScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Example"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
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
