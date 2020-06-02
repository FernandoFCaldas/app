import 'package:flutter/material.dart';
import '../components/jogo_item.dart';
import '../data/listas_data.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(  
        padding: const EdgeInsets.only(top: 0.0),      
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 180,
      childAspectRatio: 2.0 / 2.0,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      
      ),
      children: LISTA_JOGOS.map((cat) {
        return JogoItem(cat);
      }).toList()
        );
  }
}