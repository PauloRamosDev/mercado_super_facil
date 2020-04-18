
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'card_produto.dart';
import 'seletor_categorias.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listTest = List.generate(
      30,
      (index) => Card(
            child: Container(
              child: Center(
                child: Text('Teste $index'),
              ),
              color: Colors.pink,
              height: 100,
              width: 100,
            ),
          ));
  var listTestCard = List.generate(
      6,
      (index) => CardProduto());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: _actions(),
        title: Text('Mercado Super Fácil'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Text('Destaque'),
            CarouselSlider(
              enlargeCenterPage: true,
              autoPlay: true,
              height: 300.0,
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Center(
                            child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        )));
                  },
                );
              }).toList(),
            ),
            Text('Melhores escolhas'),
            CarouselSlider(
              autoPlayInterval: Duration(seconds: 5),pauseAutoPlayOnTouch: Duration(seconds: 7),
              autoPlay: true,
              height: 250.0,
              items: listTestCard,
              viewportFraction: 0.4,
              enlargeCenterPage: true,
            ),
            Text('Novidades'),
            CarouselSlider(
              autoPlayInterval: Duration(seconds: 4),pauseAutoPlayOnTouch: Duration(seconds: 7),
              autoPlay: true,
              height: 250.0,
              items: listTestCard,
              viewportFraction: 0.4,
              enlargeCenterPage: true,
            ),
            Text('Catalogo de produtos'),
            SeletorCategoria(),
            GridView.count(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              crossAxisCount: _crossAxisCount(context),
              children: listTest,
            )
          ],
        ),
      ),
    );
  }

  int _crossAxisCount(context) {
    double width = MediaQuery.of(context).size.width;

    print(width);
    if (width < 300) {
      return 2;
    } else if (width < 400) {
      return 3;
    } else if (width < 500) {
      return 4;
    } else {
      return 5;
    }
  }

  _actions() {
    return [
      IconButton(icon: Icon(Icons.search), onPressed: () {}),
//      IconButton(icon: Icon(Icons.filter_list), onPressed: () {}),
      PopupMenuButton(
        itemBuilder: (context) {
          return [
            PopupMenuItem(child: Text('Filtros')),
            PopupMenuItem(child: Text('1')),
            PopupMenuItem(child: Text('2')),
            PopupMenuItem(child: Text('3')),
          ];
        },
        icon: Icon(Icons.filter_list),
      )
    ];
  }
}
