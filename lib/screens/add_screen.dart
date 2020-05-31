import 'package:flutter/material.dart';
import '../components/country_flag_list.dart';

class AddPerfil extends StatefulWidget {
  @override
  _AddPerfilState createState() =>
      _AddPerfilState();
}

class _AddPerfilState extends State<AddPerfil> {
  Country selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select the country:"),
          SizedBox(height: 10),
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
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: getSelectedCountryWidget(),
                )),
          ),
        ],
      )),
    );
  }

  Widget getSelectedCountryWidget() {
    if (selectedCountry == null) {
      return Text("Tap to select...");
    }
    
    return Row(children: [
      Image.asset(
        selectedCountry.flag,
        width: 30,
      ),
      SizedBox(width: 10),
      Text(selectedCountry.name)
    ]);

    
  }
}