import 'package:componapp/src/providers/menu_povider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(menuProvider.opciones);
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(
        title: Text('Hello'),
      ),
      ListTile(
        title: Text('Hello 2'),
      ),
      ListTile(
        title: Text('Hello 3'),
      ),
    ];
  }
}
