import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }


  Widget _cardTipo1(){
    final card = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
           ListTile(
             leading: Icon(Icons.photo_album, color: Colors.blue),
             title: Text('Titulo de la Tarjeta 1'),
             subtitle: Text('Aqui yacio y aqui murio la tarjeta de flutter en el curso de fernando herrera'),
           ),
           Row(
             children: <Widget>[
               FlatButton(child: Text('Cancelar'), onPressed: (){},),
               FlatButton(child: Text('Ok'), onPressed: (){},)
          ],
          mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
        ),
    );

    return card;
  }

  Widget _cardTipo2(){
    final card2 = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgI4JEYv_L0VtB7YRTqkvKYiGSW12MaTqvZjJvoyapBZgCYPQckA&s'),
            placeholder: AssetImage('assets/img/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover
            // fit: BoxFit.contain
          ),
          Container(
            child: Text('No tengo idea de que hace la tarjeta'), 
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
     return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ],
        color: Colors.white,
      ),
      child: ClipRRect(
        child: card2,
        borderRadius: BorderRadius.circular(30.0),
      )
    );
  }

}