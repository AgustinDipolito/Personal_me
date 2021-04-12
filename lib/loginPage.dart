import 'dart:ui';
import 'package:firebase_git/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: screenSize.height * .77,
                width: screenSize.width,
                decoration: BoxDecoration(color: kPrimaryColor),
              ),
            ),
          ),
          Positioned(
              top:
                  0, //(screenSize.height / 2 - ((screenSize.height * 0.7) / 2)),
              left: 0, // (screenSize.width * 0.25) - screenSize.width * 0.25,
              child: Container(
                height: screenSize.width * 0.5,
                width: screenSize.width * 0.5,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle, color: kPrimaryColor),
              )),
          Positioned(
              top: 0,
              left: screenSize.width / 2,
              child: Container(
                height: screenSize.width * 0.5,
                width: screenSize.width * 0.5,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle, color: kSecondaryColor),
              ))
        ],
      ),
    );
  }
}
