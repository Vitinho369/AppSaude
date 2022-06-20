
import 'package:flutter/material.dart';
import 'package:primeiro_app/ui/TelaPrincipal.dart';
void main(){
  runApp(Tela());
}

class Tela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme:  ThemeData(
          primarySwatch: Colors.deepPurple,
        ),

        title: 'Aplicativo flutter',
        home: TelaPrincipal(),
      );
  }
}