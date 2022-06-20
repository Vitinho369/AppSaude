import 'package:flutter/material.dart';
import 'package:primeiro_app/ui/TelaCadastro.dart';

class TelaUser extends StatelessWidget{

  Widget build(context){
    return Scaffold(

      body: Center(
        child: Text(
          "Sem usuários cadastrados. Deseja cadastrar algum usuário?",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        heightFactor: double.infinity,
        widthFactor: double.infinity,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.switch_account, size: 30),
              foregroundColor: Colors.purple,
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=> TelaCadastro()));
              },
            ),
          ),

          Container(
            margin:  EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.account_circle_outlined, size: 30),
              foregroundColor: Colors.purple,
              backgroundColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}