import 'package:dominium_app/constrant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Dominium"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.person_pin,
                      color: Colors.white,
                      size: 50,

                    ),
                    Text(
                      '  Hi Tenant!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                )
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Bulletin Board'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                "imagenes/DominiumIcon.png",
                fit: BoxFit.contain,
                height: 150.0,
                width: 150.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    'Tenant!',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(),
              Container(
                height: 500.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: kPrimaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 70,
                          child: Center(
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  '20 Days',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text(
                                  'Rent due in',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 10.0,
                          color: Colors.white,
                        ),
                          Container(
                            height: 120.0,
                            margin: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 24.0,
                            ),
                            child: Stack(
                              children:
                              <Widget>[
                                Container(
                                  height: 124.0,
                                  margin: EdgeInsets.only(left: 46.0),
                                  decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(8.0),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10.0,
                                          offset: Offset(0.0,10.0),
                                        )
                                      ]
                                  ),
                                  child: Center(
                                      child:
                                      Text("Rent Payment",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric( vertical: 16.0),
                                  alignment: FractionalOffset.centerLeft,
                                  child: Image(
                                    image: AssetImage("imagenes/creditcard.png"),
                                    height: 92.0,
                                    width: 92.0,
                                  ),
                                ),
                              ],
                            ),

                          ),
                          Container(
                            height: 120.0,
                            margin: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 24.0,
                            ),
                            child: Stack(
                              children:
                              <Widget>[
                                Container(
                                  height: 124.0,
                                  margin: EdgeInsets.only(left: 46.0),
                                  decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(8.0),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10.0,
                                          offset: Offset(0.0,10.0),
                                        )
                                      ]
                                  ),
                                  child: Center(
                                    child:
                                    Text("Message Board",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  ),
                                    )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric( vertical: 16.0),
                                  alignment: FractionalOffset.centerLeft,
                                  child: Image(
                                    image: AssetImage("imagenes/messages.png"),
                                    height: 92.0,
                                    width: 92.0,
                                  ),
                                ),
                              ],
                            ),

                          ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}