import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        centerTitle: false,
      ),
      drawer: const Drawer(),
      // body: const Text(
      //   "Hello! my name is something someone.",
      //   maxLines: 1,
      //   overflow: TextOverflow.ellipsis,
      //   style: TextStyle(
      //     fontSize: 35,
      //     color: Colors.red,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      body: Container(
        color: Colors.blue,
        // height: 100,
        // width: 200,
        child: Center(
          child: Card(
            elevation: 10,
            child: Container(
              height: 450,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(16),
                // shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.orange,
                    Colors.yellow,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const Center(child: Text("Hello World")),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          print("Hello world");
        },
        // label: const Text("press here"),
        child: Icon(
          Icons.home_rounded,
          color: Colors.red.shade700,
          size: 30,
          // semanticLabel: "Add button",
        ),
      ),
    );
  }
}
