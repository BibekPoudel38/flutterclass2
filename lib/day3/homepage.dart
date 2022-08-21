import 'package:day2/day3/secondpage.dart';
import 'package:flutter/material.dart';

class HomepageDay3 extends StatelessWidget {
  const HomepageDay3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(
                    title: "From push",
                  ),
                ),
              );
            },
            child: const Text("Elevated Button"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(
                    title: "From push and remove until",
                  ),
                ),
                (route) => false,
              );
            },
            child: const Text("Outlined Button"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Text Button"),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          const CloseButton(),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 120,
              width: 120,
              color: Colors.black,
            ),
          ),
          InkWell(
            splashColor: Colors.red,
            onTap: () {},
            child: const SizedBox(
              height: 120,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}
