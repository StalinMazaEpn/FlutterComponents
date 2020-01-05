import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Componentes Temp'),), body: 
    ListView(
      // children: _crearItems()
      children: _crearItemsCorto()
    ),);
  }

  List<Widget> _crearItems(){
    //Lista Widgets
    List<Widget> lista = new List<Widget>();
    //Recorrer Listado Opciones
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt)
      );
      lista..add(tempWidget)
           ..add(Divider());
      //lista.add(Divider());
    }


    return lista;
  }

  List<Widget> _crearItemsCorto(){
    return opciones.map((item){
      return  Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance), //icon inicio
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){}, //widget al final
          ),
          Divider()
        ],
      );
    }).toList();
  }


}