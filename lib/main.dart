import 'package:firebase_git/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  return runApp(MyApp());
}

// ignore: non_constant_identifier_names
Widget MyApp() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
  ));
  return MaterialApp(
    home: LoginPage(),
  );
}
