import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
  }

  Future<List<dynamic>> cargarData() async { //resuelve segundos despues la información
    final resp = await rootBundle.loadString('assets/data/menu_opts.json');
    Map dataMap = json.decode(resp);
    // print(dataMap);
    // print('Nombre App' + dataMap['nombreApp']);
    this.opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
