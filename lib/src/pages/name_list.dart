import 'package:flutter/material.dart';

class NameList extends StatelessWidget {
  List<String> names = [
    "Heber de Jesus",
    "Erika del Carmen",
    "Luis Gabriel Matuz",
    "Claudio Cesar",
    "Roberto Eduardo"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          backgroundColor: Color.fromRGBO(151, 21, 15, 1.0),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              final name = names[index];
              return ListTile(
                title: Text(name),
                leading: Icon(Icons.person),
                onTap: () {
                  _printNameScreen(context, name);
                },
              );
            }));
  }

  _printNameScreen(BuildContext context, String name) {
    Navigator.of(context).pushNamed("/nameview", arguments: name);
  }
}
