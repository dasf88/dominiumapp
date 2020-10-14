import 'package:dominium_app/constrant.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Dominium",
     theme: ThemeData(
       primaryColor: kPrimaryColor,
     ),
     home: HomePage(),
   );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Imagenes/DominiunLogo.png'),
                  )
                ),

          ))
        ],
      )
    );
  }
}


