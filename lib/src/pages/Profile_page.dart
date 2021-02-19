import 'package:flutter/material.dart';
import 'package:food_app/src/pages/Signin_page.dart';
import 'package:food_app/src/pages/Signup_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Welcome To GoGoFood",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 50.0,
              width: 250.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignInPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.red[600],
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 50.0,
              width: 250.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignUpPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.red[600],
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
