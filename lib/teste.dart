import 'package:flutter/material.dart';
import 'package:vendaphone/view/cadastro/senha_view.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
    home: SenhaView(),
  ));
}
