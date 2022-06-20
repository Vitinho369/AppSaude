import 'package:flutter/material.dart';

class TelaAlarme extends StatelessWidget{

  Widget build(context){
    return Scaffold(
      body: Center(
        child: Text(
          "Tela de Alarme",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,

        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.alarm_off, size: 30),
              backgroundColor: Colors.white,
              foregroundColor: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple,
                child: Icon(Icons.alarm_add_outlined, size: 30,)
            ),
          ),

        ],
      ),
    );
  }
}