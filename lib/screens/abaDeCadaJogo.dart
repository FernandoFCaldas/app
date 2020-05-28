import '../models/perfildosplayers.dart';
import 'package:flutter/material.dart';
import '../models/jogo.dart';
import '../components/player_item.dart';

class AbaDeCadaJogo extends StatelessWidget {

  final List<PerfilDosPlayers> perfils;
  
  const AbaDeCadaJogo(this.perfils);

  @override
  Widget build(BuildContext context) {

    final jogo = ModalRoute.of(context).settings.arguments as Jogo;

    final jogoPerfildosplayers = perfils.where((player) {
      return player.listaDeIDs.contains(jogo.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
         title: Text(jogo.title, style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400),), 
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