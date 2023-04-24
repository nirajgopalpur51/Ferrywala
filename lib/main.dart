import 'package:flutter/material.dart';
// import 'HomePage.dart';
import 'package:get/get.dart';
import 'LacaleString.dart';
import 'language_selection.dart';
import 'optionpage.dart';
// import 'optionpage/optionpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch : Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),

      home:languageSelection(),


    );
  }


}