import 'package:flutter/material.dart';
import '../models/perfildosplayers.dart';

// height: MediaQuery.of(context).size.height/2 para dividir a tela no meio
class InfoDosPlayers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final perfilDosPlayers = ModalRoute.of(context).settings.arguments as PerfilDosPlayers;


    return Scaffold(
      appBar: AppBar(
        title: Text(perfilDosPlayers.title),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(46),
              bottomLeft: Radius.circular(46),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      width: 150,
                      height: 150,
                      image: NetworkImage('https://cenie.eu/sites/default/files/styles/thumbnail-380x214/public/pictures/picture-4811-1568215524.png?itok=QqZpUKQP'),
                    )
                  ],
                ),
                Text(
                    'ID: 12345678',
                    style: TextStyle(
                    color: Colors.white38,
                    fontFamily: 'Righteous',
                    fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(height: 5),
                Text(
                    'Fernando Ferreira',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    fontFamily: 'Righteous',

                  ),
                  ),
                  SizedBox(height: 2),
                Text(
                    'Age: ${perfilDosPlayers.age}',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontFamily: 'Righteous',

                  ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'e-mail: ${perfilDosPlayers.email}',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontFamily: 'Righteous',

                  ),
                  ),
              ],
            ),
          ),
            ),
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.directions_car, color: Colors.blue,),
                        Text(
                      perfilDosPlayers.wcsText,
                      style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Righteous',
                          ),
                        ),
                        Text('(Would you change state to play)', style: TextStyle(color: Colors.grey, fontSize: 9),),  
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.airplanemode_active, color: Colors.blue,),
                        Text(
                      perfilDosPlayers.wccText,
                      style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Righteous',
                          ),
                        ),
                        Text('(Would you change country to play)', style: TextStyle(color: Colors.grey, fontSize: 9),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.airplay, color: Colors.blue,),
                        Text(
                      perfilDosPlayers.streamerText,
                      style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Righteous',
                          ),
                        ),
                        Text('(Would you change country to play)', style: TextStyle(color: Colors.white, fontSize: 7),),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.poll, color: Colors.blue,),
                        Text(
                      perfilDosPlayers.tierText,
                      style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Righteous',
                          ),
                        ),
                        Text('(Would you change country to play)', style: TextStyle(color: Colors.white, fontSize: 9),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.speaker_notes, color: Colors.blue,),
                        Text(
                      perfilDosPlayers.englishText,
                      style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Righteous',
                          ),
                        ),
                        Text('(Would you change country to play)', style: TextStyle(color: Colors.white, fontSize: 9),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.flag, color: Colors.blue,),
                        Text(
                      'Brazil',
                      style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Righteous',
                          ),
                        ),
                        Text('(Would you change country to play)', style: TextStyle(color: Colors.white, fontSize: 7),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.favorite),
      onPressed: () {
        Navigator.of(context).pop(perfilDosPlayers.title);
      },
    ),
    );
  }
}