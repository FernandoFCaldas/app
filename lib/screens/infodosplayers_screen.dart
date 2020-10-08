import 'package:flutter/material.dart';
import '../models/perfildosplayers.dart';

// height: MediaQuery.of(context).size.height/2 para dividir a tela no meio
class InfoDosPlayers extends StatefulWidget {
  @override
  _InfoDosPlayersState createState() => _InfoDosPlayersState();
}

class _InfoDosPlayersState extends State<InfoDosPlayers> {
  @override
  Widget build(BuildContext context) {
    final perfilDosPlayers =
        ModalRoute.of(context).settings.arguments as PerfilDosPlayers;

    return Scaffold(
      appBar: AppBar(
        title: Text(perfilDosPlayers.nickname),
        elevation: 15,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 15,
              color: Colors.white,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images_profile/logo_option_3.png',
                            width: 120,
                            height: 120,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ID: 12345678',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Righteous',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '${perfilDosPlayers.realname}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Age: ${perfilDosPlayers.age}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.poll, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'Tier: ${perfilDosPlayers.tier}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.directions_car, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'WCS: ${perfilDosPlayers.wcs}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                '(Would Change State to Play)',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.airplanemode_active,
                                  color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'WCC: ${perfilDosPlayers.wcc}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                '(Would Change Country to Play)',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.live_tv, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    'Streamer: ${perfilDosPlayers.streamer}',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: 'Righteous'),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    '- ${perfilDosPlayers.streamlink}',
                                    style: TextStyle(
                                        color: Colors.blue[300],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        fontFamily: 'Righteous'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.live_tv, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    'Youtuber: ${perfilDosPlayers.youtuber}',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: 'Righteous'),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    '- ${perfilDosPlayers.youtubechannel}',
                                    style: TextStyle(
                                        color: Colors.blue[300],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: 'Righteous'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.headset_mic, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'Discord: ${perfilDosPlayers.discord}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.speaker_notes, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'English: ${perfilDosPlayers.english}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.flag, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'Country: ${perfilDosPlayers.countries}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.satellite, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'State: ${perfilDosPlayers.state}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.store_mall_directory,
                                  color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'City: ${perfilDosPlayers.city}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.mail, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'E-mail: ${perfilDosPlayers.email}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 15,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.phone_android, color: Colors.blue),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                'Phone: ${perfilDosPlayers.phone}',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Righteous'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Center(
                      child: Text(
                        'We always recommend checking the data on the game platform before contacting.',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            fontFamily: 'Righteous'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
