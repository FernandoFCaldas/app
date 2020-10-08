import '../models/perfildosplayers.dart';
import 'package:flutter/material.dart';
import '../models/jogo.dart';
import '../components/player_item.dart';
import '../data/listas_data.dart';
import 'add_screen.dart';

class AbaDeCadaJogo extends StatefulWidget {
  final List<PerfilDosPlayers> perfils;

  const AbaDeCadaJogo(this.perfils);

  @override
  AbaDeCadaJogoState createState() => AbaDeCadaJogoState();
}

class AbaDeCadaJogoState extends State<AbaDeCadaJogo> {
  @override
  Widget build(BuildContext context) {
    final jogo = ModalRoute.of(context).settings.arguments as Jogo;

    final jogoPerfildosplayers = widget.perfils.where((player) {
      return player.listaDeIDs.contains(jogo.id);
    }).toList();

    /*void adicionarPerfil (PerfilDosPlayers newPerfil) {
      jogoPerfildosplayers.add(PerfilDosPlayers(
        listaDeIDs: ['Valorant'],
        nickname: newPerfil.nickname,
        age: newPerfil.age,
      ));
    }*/

    return Scaffold(
      appBar: AppBar(
        title: Text(
          jogo.title,
          style:
              TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: jogoPerfildosplayers.length,
          itemBuilder: (ctx, index) {
            return PlayerItem(jogoPerfildosplayers[index]);
          },
        ),
      ),
    );
  }
}
