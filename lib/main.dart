import 'package:flutter/material.dart';

void main() {
  runApp(DominiumApp());
}

class DominiumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dominium',
      theme: ThemeData(
        primarySwatch: Colors.blueAccent[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
    appBar: AppBar(
    title: Text('Login'),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(
     'Usuario:',
    ),
    TextField(
    decoration: InputDecoration( border: OutlineInputBorder(),
    labelText: 'Nombre Usuario'),
    ),
    Text(
    'Contraseña:',
    ),
    TextField(
    obscureText: true,
    obscuringCharacter: '*',
    decoration: InputDecoration( border: OutlineInputBorder(),
    labelText: 'Contraseña del Usuario'),
    ),
    ],
    ),
    ),
    ),
    );
  }
}
