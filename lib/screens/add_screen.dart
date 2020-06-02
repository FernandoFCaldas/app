import 'package:flutter/material.dart';
import '../components/country_flag_list.dart';
import '../models/jogo.dart';

class AddPerfil extends StatefulWidget {
  @override
  _AddPerfilState createState() =>
      _AddPerfilState();
}

class _AddPerfilState extends State<AddPerfil> {
  Country selectedCountry;
  Jogo selectedJogo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
          width: double.infinity,
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              'Only one profile per game.',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18, fontFamily: 'Righteous'),
              ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () async {
                    var result = await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      builder: (BuildContext context) => CountrySelectList(),
                    );

                    if (result is Country) {
                      setState(() {
                        this.selectedCountry = result;
                      });
                    }
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width/0.9,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: getSelectedCountryWidget(),
                      )),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () async {
                    var resultjogo = await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      builder: (BuildContext context) => JogoSelectList(),
                    );

                    if (resultjogo is Jogo) {
                      setState(() {
                        this.selectedJogo = resultjogo;
                      });
                    }
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width/0.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: getSelectedJogoWidget(),
                          ),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedCountryWidget() {
    if (selectedCountry == null) {
      return Center(child: Text("Choose your country", style: TextStyle(fontSize: 15, fontFamily: 'Righteous'),));
    }
    
    return Row(children: [
        Image.asset(
    selectedCountry.flag,
    width: 20,
    height: 20,
        ),
        SizedBox(width: 10),
        Center(child: Text(selectedCountry.name, style: TextStyle(fontSize: 15),)),
      ]);

    
  }
  Widget getSelectedJogoWidget() {
    if (selectedJogo == null) {
      return Center(child: Text("Choose your game", style: TextStyle(fontSize: 15, fontFamily: 'Righteous'),));
    }
    
    return Row(children: [
        Image.asset(
    selectedJogo.iconAsset,
    width: 20,
    height: 20,
        ),
        SizedBox(width: 10),
        Text(selectedJogo.title, style: TextStyle(fontSize: 15),),
      ]);

    
  }
}