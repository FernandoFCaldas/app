import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/perfildosplayers.dart';
import '../utils/app_routes.dart';
import '../components/country_flag_list.dart';
import '../components/englishdropdown.dart';
import '../components/images_profile.dart';
import '../components/jogo_item.dart';
import '../components/player_item.dart';
import '../components/streamerdropdown.dart';
import '../components/tierdropdown.dart';
import '../components/wccdropdown.dart';
import '../components/wcsdropdown.dart';
import '../components/youtuberdropdown.dart';
import '../screens/add_screen.dart';
import '../provider/provider.dart';

class PlayerItem extends StatefulWidget {
  final PerfilDosPlayers perfilDosPlayers;

  const PlayerItem(this.perfilDosPlayers);

  @override
  _PlayerItemState createState() => _PlayerItemState();
}

class _PlayerItemState extends State<PlayerItem> {
  void _selectPlayer(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
          AppRoutes.INFO_DOS_PLAYERS,
          arguments: widget.perfilDosPlayers,
        )
        .then(
          (result) {},
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: InkWell(
        onTap: () => _selectPlayer(context),
        splashColor: Colors.white,
        child: Card(
          elevation: 8,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: Image.asset('assets/images_profile/logo_option_22.png'),
            ),
            title: Row(
              children: <Widget>[
                Text(
                  widget.perfilDosPlayers.nickname,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/flags/brazil-flag-icon-32.png',
                  width: 25,
                  height: 15,
                ),
              ],
            ),
            subtitle: Text(
              '${widget.perfilDosPlayers.tier}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'WCS: ${widget.perfilDosPlayers.wcs}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    'WCC: ${widget.perfilDosPlayers.wcc}',
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
