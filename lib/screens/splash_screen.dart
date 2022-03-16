import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_authentication/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => InitState();
}

class InitState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration = Duration(seconds: 5);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginScreen(),
      ));
  }
  @override
  Widget build(BuildContext context) {
   return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
             // color: new Color(0xffF5591F),
             color: Color.fromRGBO(80, 16, 99, 1),
              gradient: LinearGradient(
                colors: [(Color.fromRGBO(80, 16, 99, 1)), (Color.fromARGB(255, 89, 29, 107))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          Center(
            child:Container(
              child: Image.asset("assets/Ichrak.png"),
            )
          )
        ],
      ),
    );
  }

  
}

