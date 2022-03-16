import 'package:flutter/material.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xFF501063),
                gradient: LinearGradient(
                    colors: [(Color(0xFF501063)), (Color(0xFF591D6B))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset("assets/Ichrak.png"),
                    height: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          // enter email
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE))
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xFF501063),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xFF501063),
                  ),
                  hintText: "Enter Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          // enter password
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE))
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              obscureText: true,
              cursorColor: Color(0xFF501063),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xFF501063),
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Text("Forget Password?"),
              onTap: () => {

              },
            ),
          ),

          GestureDetector(
            onTap: () => {
              /** onClick code here */
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              margin: EdgeInsets.only(left: 20,right: 20, top: 60),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(Color(0xFF501063)), (Color(0xFF591D6B))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [ BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE))
              ],
              ),
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                  
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account ? "),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context) => SignupScreen()
                    ))
                  },
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Color(0xFF501063),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
