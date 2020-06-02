import 'package:flutter/material.dart';
import '../models/perfildosplayers.dart';
import '../utils/app_routes.dart';
import 'country_flag_list.dart';

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
            child: Card(
            elevation: 15,
                  child: ListTile(
            leading: CircleAvatar(
                radius: 32,
                child: Image.asset('assets/images_profile/logo_option_26.png'),
            ),
            title: Row(
              children: <Widget>[
                Text(
                    perfilDosPlayers.nickname,
                    style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                    ),
                 ),
                SizedBox(width: 5,),
                Image.asset('assets/flags/brazil-flag-icon-32.png', width: 25, height: 15,),
              ],
            ),
            subtitle: Text(
                perfilDosPlayers.tierText,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  children: <Widget>[
                    Text(perfilDosPlayers.wcsText,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(perfilDosPlayers.wccText,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              
          ),
        ),
      ),
    );
  }
}

//child: Text(perfilDosPlayers.title),