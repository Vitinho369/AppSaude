import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget{
  Widget build(context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,

        leading: Builder(
          builder: (context){
            return IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),

      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(100),
            child: TextField(
              maxLength: 30,
              decoration: InputDecoration(
                  border: OutlineInputBorder (borderSide: BorderSide(color: Colors.grey)),
                  labelText: "Nome de usuário",
                  hintStyle:  TextStyle(color: Colors.grey[400], fontSize: 20)
              ),
            ),
          ),
        ],
      ),
    );
  }
}