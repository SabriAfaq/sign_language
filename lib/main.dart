import 'package:flutter/material.dart';
import 'package:sign_language/screens/home.dart';
import 'package:sign_language/utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sign language',
      theme: ThemeData(
        fontFamily: "Iranyekan",
        // backgroundColor: Color(0XFFD9EBFF),
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: kappBarColor,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          elevation: 0,
        ),
      ),
      home: Home(),
    );
  }
}
