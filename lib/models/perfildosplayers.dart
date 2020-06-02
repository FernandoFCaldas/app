import 'package:flutter/material.dart';

enum Tier {
  T1,
  T2,
  T3,
  T4,
}
enum WCS {
  Yes,
  No, 
}
enum WCC {
  Yes,
  No,
}
enum Streamer {
  Yes,
  No,
}

enum English {
  No,
  Basic,
  Medium,
  Advanced,
}


class PerfilDosPlayers {

  final String id;
  final String nickname;
  final List<String> listaDeIDs;
  final String realname;
  final String email;
  final String phone;
  final Tier tier;
  final English english;
  final Streamer streamer;
  final WCS wcs;
  final WCC wcc;
  final int age;
  final bool isTier1;
  final bool isTier2;
  final bool isTier3;
  final bool isTier4;
  final bool isEnglishNo;
  final bool isEnglishBasic;
  final bool isEnglishMedium;
  final bool isEnglishAdvanced;
  final bool isStreamer;
  final bool isWCS;
  final bool isWCC;


  const PerfilDosPlayers ({
    @required this.id,
    @required this.nickname,
    @required this.email,
    @required this.realname,
    @required this.english,
    this.phone,
    @required this.listaDeIDs,
    @required this.tier,
    @required this.streamer,
    @required this.wcs,
    @required this.wcc,
    @required this.age,
    @required this.isTier1,
    @required this.isTier2,
    @required this.isTier3,
    @required this.isTier4,
    @required this.isEnglishNo,
    @required this.isEnglishBasic,
    @required this.isEnglishMedium,
    @required this.isEnglishAdvanced,
    @required this.isStreamer,
    @required this.isWCS,
    @required this.isWCC,
  });

  String get tierText {
    switch (tier) {
      case Tier.T1:
        return 'Tier: 01';
      case Tier.T2:
        return 'Tier: 02';
      case Tier.T3:
        return 'Tier: 03';
      case Tier.T4:
        return 'Tier: 04';
      default:
        return 'Select your tier';
    }
  }

  String get wcsText {
    switch (wcs) {
      case WCS.Yes:
        return 'WCS: Yes';
      case WCS.No:
        return 'WCS: No';
      default:
        return 'Select WCS';
    }
  }

  String get wccText {
    switch (wcc) {
      case WCC.Yes:
        return 'WCC: Yes';
      case WCC.No:
        return 'WCC: No';
      default:
        return 'Select WCC';
    }
  }

  String get streamerText {
    switch (streamer) {
      case Streamer.Yes:
        return 'Streamer: Yes';
      case Streamer.No:
        return 'Streamer: No';
      default:
        return 'Select field Streamer';
    }
  }

  String get englishText {
    switch (english) {
      case English.No:
        return 'English: No';
      case English.Basic:
        return 'English: Basic';
      case English.Medium:
        return 'English: Medium';
      case English.Advanced:
        return 'English: Advanced';
      default:
        return 'Select field English';
    }
  }

}