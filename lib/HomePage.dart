import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_me/authentication_services.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: FloatingActionButton(
          onPressed: () {
            context.read<AuthenticationService>().signOut();
          },
          child: Icon(Icons.exit_to_app),
        ),
      ),
    );
  }
}
