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
        elevation: 15,
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Card(
              elevation: 15,
              color: Colors.white,
              child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          width: 120,
                          height: 120,
                          image: NetworkImage('https://cenie.eu/sites/default/files/styles/thumbnail-380x214/public/pictures/picture-4811-1568215524.png?itok=QqZpUKQP'),
                        )
                      ],
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
                        'Fernando Ferreira',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        fontFamily: 'Righteous',

                      ),
                      ),
                      SizedBox(height: 2),
                    Text(
                        'Age: ${perfilDosPlayers.age}',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        fontFamily: 'Righteous',

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
                    Icon(Icons.directions_car, color: Colors.blue),
                  ],
                ),
                SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text(
                          perfilDosPlayers.wcsText,
                          style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
                          ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text(
                          '(Would Change State to Play)',
                          style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.w400,fontSize: 12, fontFamily: 'Righteous'),
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
                    Icon(Icons.airplanemode_active, color: Colors.blue),
                  ],
                ),
                SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text(
                          perfilDosPlayers.wccText,
                          style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
                          ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text(
                          '(Would Change Country to Play)',
                          style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.w400,fontSize: 12, fontFamily: 'Righteous'),
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
                      Text(
                        perfilDosPlayers.streamerText,
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                    Icon(Icons.poll, color: Colors.blue),
                  ],
                ),
                SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text(
                        perfilDosPlayers.tierText,
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                        perfilDosPlayers.englishText,
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                        'Country: Brazil',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                        'State: ',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                    Icon(Icons.store_mall_directory, color: Colors.blue),
                  ],
                ),
                SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text(
                        'City:',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14, fontFamily: 'Righteous'),
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
                style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 9, fontFamily: 'Righteous'),
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
    /*floatingActionButton: FloatingActionButton(
      child: Icon(Icons.favorite),
      onPressed: () {
        Navigator.of(context).pop(perfilDosPlayers.title);
      },
    ),
    */
    );
  }
}