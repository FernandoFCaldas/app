import 'package:flutter/material.dart';
import 'infodosplayers_screen.dart';

/* usar dps pra por icone
Column(
children: <Widget>[
IconButton(icon: Icon(Icons.edit, color: Colors.blue), onPressed: null),
],
),
*/

class MeuPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
      children: <Widget>[
        Card(
          elevation: 15,
          child: Container(
          height: 230,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
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
                    'Age: 22',
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
            padding: const EdgeInsets.all(10.0),
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
                        'E-mail: fernando980504@gmail.com',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15, fontFamily: 'Righteous'),
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
            padding: const EdgeInsets.all(10.0),
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
                        'Phone: (+55) (034) 992465888',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15, fontFamily: 'Righteous'),
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
            padding: const EdgeInsets.all(10.0),
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
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15, fontFamily: 'Righteous'),
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
            padding: const EdgeInsets.all(10.0),
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
                        'State: MG',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15, fontFamily: 'Righteous'),
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
            padding: const EdgeInsets.all(10.0),
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
                        'City: Uberlândia',
                        style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15, fontFamily: 'Righteous'),
                        ),
                  ],
                ),
              ],
            ),
          ),
              ),
          SizedBox(height: 10),
          Container(
            child: Center(
              child: Text(
                'Profiles Created:',
                style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 18, fontFamily: 'Righteous'),
                ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 15,
                  child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Text('Foto'),
            ),
            title: Text(
                'perfilDosPlayers.title',
                style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                ),
             ),
            subtitle: Text(
                'perfilDosPlayers.tierText',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
            ),
            trailing: IconButton(icon: Icon(Icons.delete, color: Colors.red,), onPressed: null),
          ),
        ),
        Card(
            elevation: 15,
                  child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Text('Foto'),
            ),
            title: Text(
                'perfilDosPlayers.title',
                style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                ),
             ),
            subtitle: Text(
                'perfilDosPlayers.tierText',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
            ),
            trailing: IconButton(icon: Icon(Icons.delete, color: Colors.red,), onPressed: null),
          ),
        ),
            ],
          ),
        ),
          ]
        ),
    );
  }
}