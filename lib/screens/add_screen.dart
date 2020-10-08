import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../components/country_flag_list.dart';
import '../models/jogo.dart';
import '../components/images_profile.dart';
import '../models/perfildosplayers.dart';
import '../components/tierdropdown.dart';
import '../components/englishdropdown.dart';
import '../components/wcsdropdown.dart';
import '../components/wccdropdown.dart';
import '../components/streamerdropdown.dart';
import '../components/youtuberdropdown.dart';
import 'abaDeCadaJogo.dart';

class AddPerfil extends StatefulWidget {
  @override
  AddPerfilState createState() => AddPerfilState();
}

class AddPerfilState extends State<AddPerfil> {
  Country selectedCountry;
  Jogo selectedJogo;
  ImagesProfile selectedImage;
  DropTier selectedTier;
  DropEnglish selectedEnglish;
  DropWCS selectedWCS;
  DropWCC selectedWCC;
  DropStreamer selectedStreamer;
  DropYoutuber selectedYoutuber;

  final _form = GlobalKey<FormState>();
  final _formData = Map<String, Object>();

  void _saveForm() {
    var isValid = _form.currentState.validate();

    if (!isValid) {
      return;
    } else {
      _form.currentState.save();

      final newPerfil = PerfilDosPlayers(
        listaDeIDs: selectedJogo.id,
        youtuber: selectedYoutuber.youtuber,
        streamer: selectedStreamer.streamer,
        wcc: selectedWCC.wcc,
        wcs: selectedWCS.wcs,
        english: selectedEnglish.english,
        tier: selectedTier.tier,
        countries: selectedCountry.name,
        realname: _formData['realname'],
        nickname: _formData['nickname'],
        age: _formData['age'],
        state: _formData['state'],
        city: _formData['city'],
        streamlink: _formData['streamlink'],
        youtubechannel: _formData['youtubechannel'],
        email: _formData['e-mail'],
      );
      print(newPerfil.listaDeIDs);
      print(newPerfil.realname);
      print(newPerfil.nickname);
      print(newPerfil.age);
      print(newPerfil.youtuber);
      print(newPerfil.youtubechannel);
      print(newPerfil.streamer);
      print(newPerfil.streamlink);
      print(newPerfil.wcc);
      print(newPerfil.wcs);
      print(newPerfil.english);
      print(newPerfil.tier);
      print(newPerfil.countries);
      print(newPerfil.state);
      print(newPerfil.city);
      print(newPerfil.email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Become a Pro',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontFamily: 'Righteous'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
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
                        color: Colors.grey[50],
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
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: <Widget>[
                    Column(
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
                              builder: (BuildContext context) =>
                                  CountrySelectList(),
                            );

                            if (result is Country) {
                              setState(() {
                                this.selectedCountry = result;
                              });
                            }
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: getSelectedCountryWidget(),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: <Widget>[
                          Column(
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
                                    builder: (BuildContext context) =>
                                        JogoSelectList(),
                                  );

                                  if (resultjogo is Jogo) {
                                    setState(() {
                                      this.selectedJogo = resultjogo;
                                    });
                                  }
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: getSelectedJogoWidget(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    FittedBox(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.13,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              //maxLength: 20,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                labelText: 'Nickname:',
                                labelStyle: TextStyle(
                                  color: Colors.grey[600],
                                ),
                                errorBorder: null,
                              ),
                              onSaved: (value) => _formData['nickname'] = value,
                              validator: (value) {
                                if (value.length < 1 && value.length > 20) {
                                  return 'invalid nickname';
                                }

                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        FittedBox(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.13,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                    ),
                                    labelText: 'Age:',
                                    labelStyle: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  onSaved: (value) =>
                                      _formData['age'] = int.parse(value),
                                  validator: (value) {
                                    if (value.length < 2 && value.length > 2) {
                                      return 'invalid age';
                                    }

                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    FittedBox(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.13,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                labelText: 'State:',
                                labelStyle: TextStyle(
                                  color: Colors.grey[600],
                                ),
                                errorBorder: null,
                              ),
                              onSaved: (value) => _formData['state'] = value,
                              validator: (value) {
                                if (value.length < 2 && value.length > 20) {
                                  return 'invalid state';
                                }

                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        FittedBox(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.13,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  //onChanged: (newValue) => nickname = newValue,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                    ),
                                    labelText: 'City:',
                                    labelStyle: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                    errorBorder: null,
                                  ),
                                  onSaved: (value) => _formData['city'] = value,
                                  validator: (value) {
                                    if (value.length < 2 && value.length > 20) {
                                      return 'invalid city';
                                    }

                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () async {
                            var resultTier = await showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              builder: (BuildContext context) =>
                                  TierSelectList(),
                            );

                            if (resultTier is DropTier) {
                              setState(() {
                                this.selectedTier = resultTier;
                              });
                            }
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: getSelectedTierWidget(),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(height: 5),
                              GestureDetector(
                                onTap: () async {
                                  var resultEnglish =
                                      await showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    builder: (BuildContext context) =>
                                        EnglishSelectList(),
                                  );

                                  if (resultEnglish is DropEnglish) {
                                    setState(() {
                                      this.selectedEnglish = resultEnglish;
                                    });
                                  }
                                },
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: getSelectedEnglishWidget(),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () async {
                            var resultWCS = await showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              builder: (BuildContext context) =>
                                  WCSSelectList(),
                            );

                            if (resultWCS is DropWCS) {
                              setState(() {
                                this.selectedWCS = resultWCS;
                              });
                            }
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: getSelectedWCSWidget(),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(height: 5),
                              GestureDetector(
                                onTap: () async {
                                  var resultWCC = await showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    builder: (BuildContext context) =>
                                        WCCSelectList(),
                                  );

                                  if (resultWCC is DropWCC) {
                                    setState(() {
                                      this.selectedWCC = resultWCC;
                                    });
                                  }
                                },
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: getSelectedWCCWidget(),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () async {
                            var resultYoutuber = await showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              builder: (BuildContext context) =>
                                  YoutuberSelectList(),
                            );

                            if (resultYoutuber is DropYoutuber) {
                              setState(() {
                                this.selectedYoutuber = resultYoutuber;
                              });
                            }
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: getSelectedYoutuberWidget(),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(height: 5),
                              GestureDetector(
                                onTap: () async {
                                  var resultStreamer =
                                      await showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    builder: (BuildContext context) =>
                                        StreamerSelectList(),
                                  );

                                  if (resultStreamer is DropStreamer) {
                                    setState(() {
                                      this.selectedStreamer = resultStreamer;
                                    });
                                  }
                                },
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: getSelectedStreamerWidget(),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              labelText: 'Stream Link:',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              errorBorder: null,
                            ),
                            onSaved: (value) => _formData['streamlink'] = value,
                            validator: (value) {
                              if (value.length < 5 && value.length > 30) {
                                return 'invalid link';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              labelText: 'Youtube Channel:',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              errorBorder: null,
                            ),
                            onSaved: (value) =>
                                _formData['youtubechannel'] = value,
                            validator: (value) {
                              if (value.length < 5 && value.length > 30) {
                                return 'invalid link';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              labelText: 'Realname:',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              errorBorder: null,
                            ),
                            onSaved: (value) => _formData['realname'] = value,
                            validator: (value) {
                              if (value.length < 2 && value.length > 30) {
                                return 'invalid name';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              labelText: 'E-mail:',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              errorBorder: null,
                            ),
                            onSaved: (value) => _formData['e-mail'] = value,
                            validator: (value) {
                              if (value.length < 5 && value.length > 30) {
                                return 'invalid e-mail';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              labelText: 'Phone:',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                            ),
                            onSaved: (value) =>
                                _formData['phone'] = int.parse(value),
                            validator: (value) {
                              if (value.length < 5 && value.length > 20) {
                                return 'invalid phone';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              labelText: 'Discord:',
                              labelStyle: TextStyle(color: Colors.grey[600]),
                              errorBorder: null,
                            ),
                            onSaved: (value) => _formData['discord'] = value,
                            validator: (value) {
                              if (value.length < 1 && value.length > 20) {
                                return 'invalid discord';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.grey[600], width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: FlatButton(
                    onPressed: () {
                      _saveForm();
                    },
                    child: Text(
                      'Create',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getSelectedCountryWidget() {
    if (selectedCountry == null) {
      return Center(
        child: Text(
          "Select your country",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
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
        style: TextStyle(fontSize: 12),
      )),
    ]);
  }

  Widget getSelectedTierWidget() {
    if (selectedTier == null) {
      return Center(
        child: Text(
          "Select your Tier/Rank",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      SizedBox(width: 10),
      Center(
          child: Center(
        child: Text(
          selectedTier.tier,
          style: TextStyle(fontSize: 15),
        ),
      )),
    ]);
  }

  Widget getSelectedEnglishWidget() {
    if (selectedEnglish == null) {
      return Center(
        child: Text(
          "Do you speak english?",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      SizedBox(width: 10),
      Center(
          child: Center(
        child: Text(
          selectedEnglish.english,
          style: TextStyle(fontSize: 15),
        ),
      )),
    ]);
  }

  Widget getSelectedWCSWidget() {
    if (selectedWCS == null) {
      return Center(
        child: Text(
          "WCS",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      SizedBox(width: 10),
      Center(
          child: Center(
        child: Text(
          selectedWCS.wcs,
          style: TextStyle(fontSize: 15),
        ),
      )),
    ]);
  }

  Widget getSelectedWCCWidget() {
    if (selectedWCC == null) {
      return Center(
        child: Text(
          "WCC",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      SizedBox(width: 10),
      Center(
          child: Center(
        child: Text(
          selectedWCC.wcc,
          style: TextStyle(fontSize: 15),
        ),
      )),
    ]);
  }

  Widget getSelectedYoutuberWidget() {
    if (selectedYoutuber == null) {
      return Center(
        child: Text(
          "Youtuber?",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      SizedBox(width: 10),
      Center(
          child: Center(
        child: Text(
          selectedYoutuber.youtuber,
          style: TextStyle(fontSize: 15),
        ),
      )),
    ]);
  }

  Widget getSelectedStreamerWidget() {
    if (selectedStreamer == null) {
      return Center(
        child: Text(
          "Streamer?",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      SizedBox(width: 10),
      Center(
          child: Center(
        child: Text(
          selectedStreamer.streamer,
          style: TextStyle(fontSize: 15),
        ),
      )),
    ]);
  }

  Widget getSelectedJogoWidget() {
    if (selectedJogo == null) {
      return Center(
        child: Text(
          "Select your game",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.grey[600]),
        ),
      );
    }

    return Row(children: [
      Image.asset(
        selectedJogo.iconAsset,
        width: 20,
        height: 20,
      ),
      SizedBox(width: 10),
      Center(
          child: Text(
        selectedJogo.id,
        style: TextStyle(fontSize: 12),
      )),
    ]);
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
