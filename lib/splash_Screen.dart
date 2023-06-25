import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    starTimer();
  }

  starTimer(){
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacementNamed(context, '/welcome');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: content(),
    );
  }

  Widget content() {
  return Center(
    child: Lottie.network(
      'https://assets6.lottiefiles.com/packages/lf20_MHU92vpsEQ.json',
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.height * 0.25
    ),
  );
 }
}
