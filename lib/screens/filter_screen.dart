import 'package:flutter/material.dart';
import '../models/filtro.dart';
import 'add_screen.dart';

class FilterScreen extends StatefulWidget {

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  var filtro = Filtro();

  Widget 
  _createSwitch(
    String title, 
    String subtitle, 
    bool value, 
    Function(bool) onChanged,
    ) {
      return SwitchListTile.adaptive(
        title: Text(title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15, fontFamily: 'OpenSans')),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400,fontSize: 12, fontFamily: 'Righteous')),
        value: value, 
        onChanged: (value) { 
          onChanged(value);
//          widget.sempreQueMudarOsFiltros(filtro);
        }
        );
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              'Find your perfect player',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18, fontFamily: 'Righteous'),
              ),
          ),
        ),
        
        Expanded(child: ListView(
          children: <Widget>[
            _createSwitch(
              'Tier 01:',
              'players with the best rank',
              filtro.isTier1,
              (value) => setState(() => filtro.isTier1 = value),
            ),
            _createSwitch(
              'Tier 02:',
              'players with the second best rank',
              filtro.isTier2,
              (value) => setState(() => filtro.isTier2 = value),
            ),
            _createSwitch(
              'Tier 03:',
              'players with the third best rank',
              filtro.isTier3,
              (value) => setState(() => filtro.isTier3 = value),
            ),
            _createSwitch(
              'Tier 04:',
              'all ranks below the third',
              filtro.isTier4,
              (value) => setState(() => filtro.isTier4 = value),
            ),
            _createSwitch(
              'WCS:',
              'would change state to play',
              filtro.isWCS,
              (value) => setState(() => filtro.isWCS = value),
            ),
            _createSwitch(
              'WCC:',
              'would change country to play',
              filtro.isWCC,
              (value) => setState(() => filtro.isWCC = value),
            ),
            _createSwitch(
              'Streamer:',
              'the player is a streamer',
              filtro.isStreamer,
              (value) => setState(() => filtro.isStreamer = value),
            ),
            _createSwitch(
              'Basic English:',
              'the player speaks basic english ',
              filtro.isEnglishBasic,
              (value) => setState(() => filtro.isEnglishBasic = value),
            ),
            _createSwitch(
              'Medium English:',
              'the player speaks medium english ',
              filtro.isEnglishMedium,
              (value) => setState(() => filtro.isEnglishMedium = value),
            ),
            _createSwitch(
              'Advanced English:',
              'the player speaks advanced english ',
              filtro.isEnglishAdvanced,
              (value) => setState(() => filtro.isEnglishAdvanced = value),
            ),
          ],
        ))
      ],
      
    );
  }
}