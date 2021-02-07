import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programacion Movil"),
        backgroundColor: Color.fromRGBO(151, 21, 15, 1.0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              constraints: BoxConstraints.expand(
                height: 200,
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage("assets/images/android_logo.png"),
                ),
              )),
          Container(
              constraints: BoxConstraints.expand(
                height: 150,
              ),
              child: Text(
                "Aplicacion chida",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
                textAlign: TextAlign.center,
              )),
          FlatButton(
              color: Colors.blue[300],
              textColor: Colors.white,
              splashColor: Colors.green,
              minWidth: 150.0,
              height: 40.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                _showLogin(context);
              },
              child: Text("Siguiente",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )))
        ],
      ),
    );
  }
}

void _showLogin(BuildContext context) {
  Navigator.of(context).pushNamed("/login");
}
