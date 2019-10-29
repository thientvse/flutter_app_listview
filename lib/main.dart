import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/LoginPage.dart';
import 'helpers/Constants.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {


  final routes = <String, WidgetBuilder> {
    loginPageTag: (context) => LoginPage(),
    homePageTag: (context) => HomePage(),
  };


  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }

}