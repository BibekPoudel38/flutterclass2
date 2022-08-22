// import 'package:day2/homepage.dart';

import 'package:day2/day3/samsung_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
        ),
      ),
      // theme: ThemeData.light(),
      // theme: ThemeData.dark(),
      // home: const Homepage(),
      // home: MyRowWidget(),
      // home: MyColumnWidget(),
      // home: MyListWidget(),
      // home: MyListBuilderWidget(),
      home: const SamsungWidget(),
    );
  }
}
