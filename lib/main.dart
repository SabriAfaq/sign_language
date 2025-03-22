import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_language/screens/home.dart';
import 'package:sign_language/utilities/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: kappBarColor));
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
        fontFamily: kfontFamily,
        // backgroundColor: Color(0XFFD9EBFF),
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: kappBarColor,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: kfontFamily,
              color: Colors.white),
          elevation: 0,
        ),
      ),
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!);
      },
      home: const Home(),
    );
  }
}
