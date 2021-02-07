import 'package:flutter/material.dart';
import 'package:proyecto_moviles/src/pages/first_page.dart';
import 'package:proyecto_moviles/src/pages/login_page.dart';
import 'package:proyecto_moviles/src/pages/name_list.dart';
import 'package:proyecto_moviles/src/pages/name_view.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      //home: Center(
      //child: FirstPage(),
      //),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => FirstPage(),
        "/login": (BuildContext context) => LoginPage(),
        "/listview": (BuildContext context) => NameList(),
        "/nameview": (BuildContext context) => NameView()
      },
    );
  }
}
