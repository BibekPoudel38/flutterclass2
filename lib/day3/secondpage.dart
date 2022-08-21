import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: TextButton(
      //   child: const Text("Go Back"),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
      body: Column(
        children: [
          Container(
            height: devHeight * 0.4,
            color: Colors.red,
            width: 100,
          ),
          Text(
            devWidth.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          Text(
            devHeight.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          Text(
            MediaQuery.of(context).orientation.name.toString(),
            style: const TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
