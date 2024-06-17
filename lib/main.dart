import 'package:flutter/material.dart';
import 'package:vendaphone/view/splash/Splash_View.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
    home: const SplashView (),
  ));
}
