import 'package:flutter/material.dart';
import '../components/country_flag_list.dart';
import '../components/englishdropdown.dart';
import '../components/images_profile.dart';
import '../components/jogo_item.dart';
import '../components/player_item.dart';
import '../components/streamerdropdown.dart';
import '../components/tierdropdown.dart';
import '../components/wccdropdown.dart';
import '../components/wcsdropdown.dart';
import '../components/youtuberdropdown.dart';
import '../screens/add_screen.dart';

class PerfilDosPlayers {
  final String id;
  final String nickname;
  final Image imageprofile;
  final String listaDeIDs;
  final String countries;
  final String tier;
  final String english;
  final String wcc;
  final String wcs;
  final String youtuber;
  final String streamer;
  final String state;
  final String city;
  final String streamlink;
  final String youtubechannel;
  final int age;
  final String realname;
  final String discord;
  final String email;
  final String phone;

  const PerfilDosPlayers({
    this.id,
    this.nickname,
    this.imageprofile,
    this.age,
    this.countries,
    this.tier,
    this.english,
    this.wcc,
    this.wcs,
    this.youtuber,
    this.streamer,
    this.state,
    this.city,
    this.email,
    this.realname,
    this.streamlink,
    this.youtubechannel,
    this.phone,
    this.discord,
    this.listaDeIDs,
  });
}
