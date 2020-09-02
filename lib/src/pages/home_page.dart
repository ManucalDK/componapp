import 'package:componapp/src/providers/menu_povider.dart';
import 'package:componapp/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica - Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    /*menuProvider
        .cargarData()
        .then((opciones) => {print('Lista'), print(opciones)});*/
    return FutureBuilder(
      future: menuProviders.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_down, color: Colors.blue),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
          Navigator.pushNamed(context, element['ruta']);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
