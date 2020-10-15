import 'package:dominium_app/constrant.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:
        Column(
          children: [
            Expanded(
              child:
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("imagenes/DominiumIcon_White.png"),
                    ),
                  ),
                ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
    child:
    Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text("Sign In",
                    style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text("Sign Up",
                    style: Theme.of(context).textTheme.button.copyWith(fontWeight: FontWeight.bold),
                  ),
              ]
    ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5,),
                        child: Icon(Icons.email,
                        color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "E-mail",
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5,),
                        child: Icon(Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_forward,
                      color: kPrimaryColor,),

                    ),
                  )
                ],
              ),
              ),
            )
          ],
        )
    );
  }
}
