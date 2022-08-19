import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 450,
        width: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(
            // image: NetworkImage(
            //   "https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png",
            // ),
            image: AssetImage("assets/pokhara.jpg"),
          ),
        ),
        // decoration: BoxDecoration(
        //   color: Colors.yellow,
        //   borderRadius: BorderRadius.circular(16),
        //   // shape: BoxShape.circle,
        //   gradient: const LinearGradient(
        //     colors: [
        //       Colors.red,
        //       Colors.orange,
        //       Colors.yellow,
        //     ],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   ),
        // ),
        child: const Center(
          child: Text(
            "Box",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
