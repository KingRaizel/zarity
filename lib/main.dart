// ignore_for_file: prefer_const_constructors

import 'package:black_coffer/homepage.dart';
import 'package:black_coffer/login/phonenumber.dart';
import 'package:black_coffer/login/verify.dart';
import 'package:black_coffer/test.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
    androidProvider: AndroidProvider.debug,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 4, 7, 38),
      ),
      initialRoute: 'home',
      routes: {
        'phone': (context) => PhoneNumber(),
        'verify': ((context) => Verify()),
        'home': ((context) => Homepage()),
        'test': ((context) => RadialProgress()),
      },
    );
  }
}
