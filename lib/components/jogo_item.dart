import 'package:flutter/material.dart';
import '../models/jogo.dart';
import '../utils/app_routes.dart';

class JogoItem extends StatelessWidget {

  final Jogo jogo;

  const JogoItem(this.jogo);
  
  void _selectGame(BuildContext context) {
        Navigator.of(context).pushNamed(
          AppRoutes.LISTAS_DOS_JOGOS,
          arguments: jogo,
          
          );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: () => _selectGame(context),
          splashColor: Colors.white,
          child: Card(
            elevation: 5,
            child: Column(
              children: <Widget>[
                SizedBox(height: 5),
                Image.asset(jogo.iconAsset),
                SizedBox(height: 3),
                Text(jogo.title, style: TextStyle(fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.w600),),
               ],
            ),
       /*     child: Container(
            child: Text(category.title),
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white70,
            ),
          ),*/
      ),
    );
  }
}