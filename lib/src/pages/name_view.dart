import 'package:flutter/material.dart';

class NameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Nombre"),
        backgroundColor: Color.fromRGBO(151, 21, 15, 1.0),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
