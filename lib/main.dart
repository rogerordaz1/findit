import 'package:findit/wiews/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme/input_theme.dart';

void main() {
  runApp(const FintItApp());
}

class FintItApp extends StatelessWidget {
  const FintItApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find It',
      initialRoute: "home",
      routes: {"home": (context) => const HomePage()},
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: MyinputTheme.inputTheme,
        textTheme: const TextTheme(
            headline2: TextStyle(color: Colors.black, fontSize: 20)),
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
