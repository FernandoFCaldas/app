import 'package:flutter/material.dart';
import '../models/perfildosplayers.dart';
import '../utils/app_routes.dart';

class PlayerItem extends StatelessWidget {

  final PerfilDosPlayers perfilDosPlayers;

  const PlayerItem(this.perfilDosPlayers);

  void _selectPlayer(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.INFO_DOS_PLAYERS,
      arguments: perfilDosPlayers,
      ).then((result) {
        
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: InkWell(
            onTap: () => _selectPlayer(context),
            splashColor: Colors.white,
            child: SingleChildScrollView(
            child: Card(
            elevation: 15,
                  child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Text('Foto'),
            ),
            title: Text(
                perfilDosPlayers.title,
                style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                ),
             ),
            subtitle: Text(
                perfilDosPlayers.tierText,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
            ),
          ),
        ),
              ),
      ),
    );
  }
}

//child: Text(perfilDosPlayers.title),