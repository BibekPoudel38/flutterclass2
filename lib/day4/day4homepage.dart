import 'dart:developer';

import 'package:day2/day3/samsung_widget.dart';
import 'package:flutter/material.dart';

class Day4Homepage extends StatefulWidget {
  const Day4Homepage({Key? key}) : super(key: key);

  @override
  State<Day4Homepage> createState() => _Day4HomepageState();
}

class _Day4HomepageState extends State<Day4Homepage> {
  @override
  void initState() {
    darkMode = true;
    super.initState();
  }

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: darkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Stafefull Widget"),
        ),
        body: ListView(
          children: [
            IconButton(onPressed: subtract, icon: const Icon(Icons.remove)),
            Text(value.toString()),
            IconButton(onPressed: add, icon: const Icon(Icons.add)),
            Switch(value: on, onChanged: changeSwitch),
            Checkbox(value: checkbox, onChanged: changeCheckbox),
            IconButton(
              onPressed: changeFavourite,
              icon: Icon(
                isFavourite ? Icons.favorite : Icons.favorite_outline,
              ),
            ),
            Switch(value: darkMode, onChanged: changeTheme),
            const SamsungWidget(),
          ],
        ),
      ),
    );
  }

  bool darkMode = false;
  changeTheme(bool value) {
    darkMode = value;
    setState(() {});
  }

  bool isFavourite = false;
  changeFavourite() {
    isFavourite = !isFavourite;
    setState(() {});
  }

  bool checkbox = false;
  changeCheckbox(bool? value) {
    checkbox = value!;
    setState(() {});
    // if (value == null) {
    //   checkbox = false;
    // } else {
    //   checkbox = value;
    // }
    // setState(() {});
  }

  bool on = false;
  changeSwitch(bool value) {
    on = value;
    setState(() {});
  }

  subtract() {
    value -= 1;
    setState(() {});
    log(value.toString());
  }

  add() {
    value += 1;
    setState(() {});

    print(value);
  }
}
