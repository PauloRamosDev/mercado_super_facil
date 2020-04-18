import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeletorCategoria extends StatefulWidget {
  @override
  _SeletorCategoriaState createState() => _SeletorCategoriaState();
}

class _SeletorCategoriaState extends State<SeletorCategoria> {
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: true,
        label: Text(Categorias.alimenticio.toString()),
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('1'),
        ));
  }
}

enum Categorias {
  bebidas,
  higiene,
  limpeza,
  alimenticio,
}
