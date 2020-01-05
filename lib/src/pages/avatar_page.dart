import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  'https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/8/87/Stan_Lee.png/revision/latest?cb=20190303192815&path-prefix=es',
                ),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/8/87/Stan_Lee.png/revision/latest?cb=20190303192815&path-prefix=es'),
          placeholder: AssetImage('assets/img/jar-loading.gif'),
        ),
      ),
    );
  }
}
