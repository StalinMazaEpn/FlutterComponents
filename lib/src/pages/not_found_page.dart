import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not Found Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}