import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(borderRadius: _borderRadius, color: _color),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.zoom_in),
              onPressed: () => _showAnimationPlus(),
              backgroundColor: Colors.indigoAccent,
            ),
            SizedBox(width: 20),
            FloatingActionButton(
              child: Icon(Icons.zoom_out),
              onPressed: () => _showAnimationMinus(),
              backgroundColor: Colors.blueAccent
            )
          ],
        ));
  }

  void _showAnimationPlus() {
    final random = Random();
    setState(() {
      _width += random.nextInt(100).toDouble();
      _height += random.nextInt(100).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }

  void _showAnimationMinus() {
    final random = Random();
    setState(() {
      _width -= random.nextInt(100).toDouble();
      _height -= random.nextInt(100).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }
}
