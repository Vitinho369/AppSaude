import 'package:flutter/material.dart';

class TelaSaude extends StatelessWidget{

  Widget build(context){
    return Scaffold(
      body: Center  (
        child: Text(
          "Tela Inicial",
          style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 40),
        ),

        widthFactor: double.infinity,
        heightFactor: double.infinity,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(

        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.heart_broken, size: 30),
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,

              onPressed: () { },
            ),

          ),

          Container(
            margin:  EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.monitor_heart_sharp, size: 30),
              backgroundColor: Colors.white,
              foregroundColor: Colors.purple,

              onPressed: () { },
            ),
          )

        ],

      ),
    );
  }
}