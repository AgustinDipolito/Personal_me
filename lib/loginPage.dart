import 'dart:ui';
import 'package:personal_me/authentication_services.dart';
import 'package:personal_me/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    // ignore: unused_local_variable
    double mitadH = screenSize.height / 2;
    final passwC = TextEditingController();
    final emailC = TextEditingController();

    @override
    // ignore: unused_element
    void dispose() {
      passwC.dispose();
      emailC.dispose();
      super.dispose();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kSecondaryColor,
      body: Stack(children: <Widget>[
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
        positionedCircle(screenSize, mitadW, (screenSize.height * .77),
            kPrimaryColor, mitadW),
        positionedCircle(screenSize, mitadW + mitadW / 4,
            screenSize.height * .77 + mitadW / 4, kSecondaryColor, mitadW / 2),
        Positioned(
            top: screenSize.height * .6,
            left: 0,
            child: Container(
              height: screenSize.height * .4,
              width: mitadW,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(mitadW),
              ),
            )),
        Positioned(
            child: Container(
                padding: EdgeInsets.only(left: mitadW / 4, right: mitadW / 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: mitadW),
                    Text(
                      "Personal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                        fontSize: mitadW / 4,
                      ),
                    ),
                    Text(
                      "Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor,
                          fontSize: mitadW / 4),
                    ),
                    // SizedBox(height: mitadW * 1.5),
                    TextField(
                        controller: emailC,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: kSecondaryColor),
                          enabledBorder: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: kSecondaryColor)),
                        )),
                    TextField(
                        controller: passwC,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: kSecondaryColor),
                          enabledBorder: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: kSecondaryColor)),
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        ElevatedButton.icon(
                            onPressed: () {
                              context.read<AuthenticationService>().signIn(
                                    email: emailC.text.trim(),
                                    password: passwC.text.trim(),
                                  );

                              print("je");
                            },
                            label: Text("Login",
                                style: TextStyle(color: kPrimaryColor)),
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              color: kPrimaryColor,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: kSecondaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                ))),
                      ],
                    )
                  ],
                ))),
      ]),
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
