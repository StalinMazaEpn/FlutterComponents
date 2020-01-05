
import 'package:componentes/src/pages/not_found_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
//import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/pages/alert_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ComponentsApp',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        print('Ruta llamada generate ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => AlertPage()
        );
      },
      // onUnknownRoute: (RouteSettings settings){
      //   print('Ruta llamada unknown ${settings.name}');
      //   return MaterialPageRoute(
      //     builder: (context) => NotFoundPage()
      //   );
      // },
      routes: getAppRoutes()
    );
  }
}