import 'package:ProDreamAPP/models/perfildosplayers.dart';
import 'package:flutter/material.dart';
import '../data/listas_data.dart';
import '../components/jogo_item.dart';
import 'perfildosplayers.dart';
import '../screens/infodosplayers_screen.dart';

class Jogo {
  final String id;
  final String title;
  final String iconAsset;

  const Jogo({
    this.id,
    this.iconAsset,
    this.title,
  });
}

class JogoSelectList extends StatefulWidget {
  @override
  _JogoSelectListState createState() =>
      _JogoSelectListState();
}

class _JogoSelectListState extends State<JogoSelectList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        ...LISTA_JOGOS.map((Jogo jogo) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, jogo);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Image.asset(
                  jogo.iconAsset,
                  width: 30,
                ),
                SizedBox(width: 10),
                Text(jogo.title)
              ]),
            )),
          );
        }).toList(),
      ]),
    );
  }
}