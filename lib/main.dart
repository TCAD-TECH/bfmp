import 'dart:async';

import 'package:bfmp_app/utils/web_view_container.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BFMP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      //  AnimatedSplashScreen(
      //     splash: Image.asset("assets/icons/logo.jpeg"),
      //     duration: 3000,
      //     backgroundColor: Color.fromARGB(255, 0, 0, 17),
      //     splashTransition: SplashTransition.fadeTransition,
      //     nextScreen: Home()),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String _links = 'https://bitfarmsminingpool.com/mobile/';

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WebViewContainer(_links))));
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 17),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/logo.jpeg"),
                    const Text(
                      "BFMP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  ],
                )),
          ),
        ));
  }
}




// 


   
  