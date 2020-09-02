import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
                'Este es un subtitulo y estoy probando un texto que se mire de forma mas extensa para determinar como el flutter es capaz de renderizarlo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar'),
                textColor: Colors.blue,
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Ok'),
                textColor: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage(
          //       'https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
          // ),
          Container(padding: EdgeInsets.all(10), child: Text('No se que poner'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: ClipRRect(
        child: card,
      ),
    );
  }
}
