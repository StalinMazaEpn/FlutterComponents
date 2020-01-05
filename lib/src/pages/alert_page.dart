import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          onPressed: () => _mostrarAlerta(context),
          textColor: Colors.white,
          shape: StadiumBorder()
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            children: <Widget>[
            Text('Contenido del Alerta'),
            Container(padding: EdgeInsets.all(10.0),),
            FlutterLogo(size: 100.0)
          ],
          mainAxisSize: MainAxisSize.min,
          ),
          actions: <Widget>[
            FlatButton(child: 
            Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop(),
          ),
            FlatButton(child: 
            Text('Ok'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
          ],
        );
      }
    );
  }

}