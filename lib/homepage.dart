import 'package:flutter/material.dart';

import 'my_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        centerTitle: false,
      ),
      drawer: const Drawer(
        child: MyContainer(),
      ),
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
      // body: Container(
      //   color: Colors.blue,
      //   // height: 100,
      //   // width: 200,
      //   child: const Center(
      //     child: MyContainer(
      //       text: "Hi from body",
      //       height: 120,
      //       radius: 180,
      //     ),
      //   ),
      // ),

      body: Container(
        color: Colors.blue,
        // height: 600,
        // wrap takes elements to next line
        // child: ListView(
        //   // spacing: 50,
        //   // runSpacing: 50,
        //   // direction: Axis.vertical,
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     for (int i = 0; i < 10; i++)
        //       MyContainer(
        //         radius: 12,
        //         height: 12,
        //         text: "Hello $i",
        //       ),
        //   ],
        // ),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 50,
          // reverse: true,
          itemBuilder: (context, index) {
            return const MyContainer();
          },
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Hello world");
        },
        label: const Text("press here"),
        // icon: Icon(
        //   Icons.home_rounded,
        //   color: Colors.red.shade700,
        //   size: 30,
        //   // semanticLabel: "Add button",
        // ),
      ),
    );
  }
}
