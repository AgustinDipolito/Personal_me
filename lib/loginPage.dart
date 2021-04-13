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
    double mitadW = screenSize.width / 2;
    // double mitadH = screenSize.height / 2;
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
          //seccion de circulares
          positionedCircle(screenSize, 0, 0, kPrimaryColor, mitadW),
          positionedCircle(screenSize, mitadW, 0, kSecondaryColor, mitadW),
          positionedCircle(
              screenSize, 0, screenSize.height * .8, kSecondaryColor, mitadW),
          positionedCircle(screenSize, mitadW, screenSize.height * .8,
              kPrimaryColor, mitadW),
          positionedCircle(screenSize, mitadW, screenSize.height * .8,
              kSecondaryColor, mitadW * .65)
        ],
      ),
    );
  }

  Positioned positionedCircle(
      Size screenSize, double x, double y, Color color, double radio) {
    return Positioned(
        top: y,
        left: x,
        child: Container(
          height: radio,
          width: radio,
          decoration: new BoxDecoration(shape: BoxShape.circle, color: color),
        ));
  }
}
