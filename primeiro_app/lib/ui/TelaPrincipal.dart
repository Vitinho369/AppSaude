import 'package:flutter/material.dart';
import 'package:primeiro_app/ui/TelaAlarme.dart';
import 'package:primeiro_app/ui/TelaSaude.dart';
import 'package:primeiro_app/ui/TelaUser.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

int _passaPagina = 1;

class TelaPrincipal extends StatefulWidget {
  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}


class _TelaPrincipalState extends  State<TelaPrincipal>{

  void _passarTela(int index){
    setState(() {
      _passaPagina = index;
    });

  }
  Widget build(context){

    List<Widget> paginas= <Widget>[TelaUser(), TelaSaude(),TelaAlarme()];

    final items = <Widget> [

      Icon(Icons.account_circle_outlined, size: 30,),
      Icon(Icons.favorite, size: 30,),
      Icon(Icons.alarm_on, size: 30,),

    ];

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Aplicativo aleatório de saúde"), centerTitle: true,
      ),

      body: paginas[_passaPagina],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.green,
          buttonBackgroundColor: Colors.deepPurple,
          items: items,
          height: 70,
          index: _passaPagina,
          onTap: _passarTela,
        ),
      ),
    );
  }
}