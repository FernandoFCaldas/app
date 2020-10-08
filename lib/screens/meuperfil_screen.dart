import 'package:flutter/material.dart';
import '../components/images_profile.dart';

/* usar dps pra por icone
Column(
children: <Widget>[
IconButton(icon: Icon(Icons.edit, color: Colors.blue), onPressed: null),
],
),
*/

class MeuPerfil extends StatefulWidget {
  @override
  _MeuPerfilState createState() => _MeuPerfilState();
}

class _MeuPerfilState extends State<MeuPerfil> {
  ImagesProfile selectedImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Card(
          elevation: 15,
          child: Container(
            height: 280,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () async {
                          var resultImage = await showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            builder: (BuildContext context) =>
                                ImagesProfileSelectList(),
                          );

                          if (resultImage is ImagesProfile) {
                            setState(() {
                              this.selectedImage = resultImage;
                            });
                          }
                        },
                        child: Card(
                          elevation: 0,
                          child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: getSelectedImageWidget(),
                              )),
                        ),
                      ),
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
                    'Fernando Ferreira',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'e-mail: fernando980504@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        fontFamily: 'Righteous'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'Profiles Created:',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Righteous'),
                ),
              ),
            ),
            SizedBox(height: 5),
            Card(
              elevation: 2,
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
                trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: null),
              ),
            ),
            Card(
              elevation: 2,
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
                trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: null),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget getSelectedImageWidget() {
    if (selectedImage == null) {
      return Center(
          child: Text(
        "+",
        style: TextStyle(fontSize: 30),
      ));
    }

    return Center(
      child: Image.asset(
        selectedImage.imagesprofile,
        width: 150,
        height: 150,
      ),
    );
  }
}
