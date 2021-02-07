import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userValue;
  String passwordValue;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Color.fromRGBO(151, 21, 15, 1.0),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  constraints: BoxConstraints.expand(
                    height: 100,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      onSaved: (value) {
                        userValue = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "No deje el campo vacio";
                        } else if (value != "admin") {
                          return "Usuario incorrecto";
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        labelText: "Usuario",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  )),
              Container(
                  constraints: BoxConstraints.expand(
                    height: 100,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      onSaved: (value) {
                        passwordValue = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "No deje el campo vacio";
                        } else if (value != "admin") {
                          return "Contraseña incorrecta";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: "Contraseña",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                    splashColor: Colors.green,
                    color: Colors.blue[300],
                    textColor: Colors.white,
                    minWidth: 150.0,
                    height: 40.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      _validateLogin(context);
                    },
                    child: Text("Entrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ))),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                    textColor: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "¿Olvidaste la contraseña?",
                    )),
              ),
            ],
          ),
        ));
  }

  void _validateLogin(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/listview");
    }
  }
}
