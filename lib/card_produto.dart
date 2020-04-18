import 'package:flutter/material.dart';

class CardProduto extends StatefulWidget {
  @override
  _CardProdutoState createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  var linkTeste =
      'https://cdn.shopify.com/s/files/1/0946/5368/products/IMG_3979_460x.jpg?v=1457819376';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 150,
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              linkTeste,
              height: 90,
            ),
            Text('Nome do produto'),
            Text('pct 5 kg',style: TextStyle(fontSize: 10),),
            Text('R\$ 17,00'),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              buttonPadding: EdgeInsets.all(0),
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: null,
                ),
                Text('0'),
                IconButton(icon: Icon(Icons.remove_circle), onPressed: null),
              ],
            ),
            RaisedButton(onPressed: null,child: Text('Adicionar'),)
          ],
        ),
      ),
    );
  }
}
