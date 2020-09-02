import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  Map dataMap;

  // _MenuProvider() {}

  Future<List<dynamic>> cargarData() async {
    final data = await rootBundle.loadString('data/menu_opts.json');
    dataMap = json.decode(data);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProviders = new _MenuProvider();
