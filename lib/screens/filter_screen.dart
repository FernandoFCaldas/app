import 'package:flutter/material.dart';
import '../models/filtro.dart';
import '../components/country_flag_list.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Country selectedCountry;

  var filtro = Filtro();

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
        title: Text(title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'OpenSans')),
        subtitle: Text(subtitle,
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: 'Righteous')),
        value: value,
        onChanged: (value) {
          onChanged(value);
//          widget.sempreQueMudarOsFiltros(filtro);
        });
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
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: 'Righteous'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: <Widget>[
              Column(
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
                        width: MediaQuery.of(context).size.width / 1.02,
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
            ],
          ),
        ),
        Expanded(
            child: ListView(
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

  Widget getSelectedCountryWidget() {
    if (selectedCountry == null) {
      return Center(
          child: Text(
        "All countries",
        style: TextStyle(fontSize: 15, fontFamily: 'Roboto'),
      ));
    }

    return Row(children: [
      Image.asset(
        selectedCountry.flag,
        width: 20,
        height: 20,
      ),
      SizedBox(width: 10),
      Center(
          child: Text(
        selectedCountry.name,
        style: TextStyle(fontSize: 15),
      )),
    ]);
  }
}
