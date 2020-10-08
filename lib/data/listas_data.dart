import 'package:ProDreamAPP/models/perfildosplayers.dart';
import 'package:ProDreamAPP/models/jogo.dart';
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
import '../models/perfildosplayers.dart';

// aqui eu controlo cada jogo na lista de games
const LISTA_JOGOS = const [
  Jogo(
    id: 'Arena Of Valor',
    title: 'Arena Of Valor',
    iconAsset: 'assets/icon/iconearenaofvalor.png',
  ),
  Jogo(
    id: 'Brawl Stars',
    title: 'Brawl Stars',
    iconAsset: 'assets/icon/iconebrawlstars.png',
  ),
  Jogo(
    id: 'COD: Mobile',
    title: 'COD: Mobile',
    iconAsset: 'assets/icon/iconecallofdutymobile.png',
  ),
  Jogo(
    id: 'COD: Warzone',
    title: 'COD: Warzone',
    iconAsset: 'assets/icon/iconecallofdutywarzone.png',
  ),
  Jogo(
    id: 'Clash Royale',
    title: 'Clash Royale',
    iconAsset: 'assets/icon/iconeclashroyale.png',
  ),
  Jogo(
    id: 'CS:GO',
    title: 'CS:GO',
    iconAsset: 'assets/icon/iconecsgo.png',
  ),
  Jogo(
    id: 'Dota 2',
    title: 'Dota 2',
    iconAsset: 'assets/icon/iconedota.png',
  ),
  Jogo(
    id: 'Fortnite',
    title: 'Fortnite',
    iconAsset: 'assets/icon/iconefortnite.png',
  ),
  Jogo(
    id: 'Free Fire',
    title: 'Free Fire',
    iconAsset: 'assets/icon/iconefreefire.png',
  ),
  Jogo(
    id: 'Hearthstone',
    title: 'Hearthstone',
    iconAsset: 'assets/icon/iconehearthstone.png',
  ),
  Jogo(
    id: 'League Of Legends',
    title: 'League Of Legends',
    iconAsset: 'assets/icon/iconelol.png',
  ),
  Jogo(
    id: 'LOR',
    title: 'LOR',
    iconAsset: 'assets/icon/iconelegendsofruneterra.png',
  ),
  Jogo(
    id: 'Mobile Legends',
    title: 'Mobile Legends',
    iconAsset: 'assets/icon/iconemobilelegends.png',
  ),
  Jogo(
    id: 'Overwatch',
    title: 'Overwatch',
    iconAsset: 'assets/icon/iconeoverwatch.png',
  ),
  Jogo(
    id: 'Paladins',
    title: 'Paladins',
    iconAsset: 'assets/icon/iconepaladins.png',
  ),
  Jogo(
    id: 'PUBG',
    title: 'PUBG',
    iconAsset: 'assets/icon/iconepubg.png',
  ),
  Jogo(
    id: 'Rocket League',
    title: 'Rocket League',
    iconAsset: 'assets/icon/iconerocketleague.png',
  ),
  Jogo(
    id: 'Spellbreak',
    title: 'Spellbreak',
    iconAsset: 'assets/icon/iconespellbreak.png',
  ),
  Jogo(
    id: 'Teamfight Tatics',
    title: 'Teamfight Tatics',
    iconAsset: 'assets/icon/iconetft.png',
  ),
  Jogo(
    id: 'Vainglory',
    title: 'Vainglory',
    iconAsset: 'assets/icon/iconevainglory.png',
  ),
  Jogo(
    id: 'Valorant',
    title: 'Valorant',
    iconAsset: 'assets/icon/iconevalorant.png',
  ),
];

const LISTA_PLAYERS = const [
  PerfilDosPlayers(
    id: 'm1',
    listaDeIDs: 'Arena Of Valor',
    nickname: 'Shirt 10',
    realname: 'Fernando Ferreira',
    age: 22,
    tier: 'Tier 01',
    wcs: 'Yes',
    wcc: 'Yes',
    streamer: 'Yes',
    streamlink: 'twitch.tv/shirt10',
    youtuber: 'Yes',
    youtubechannel: 'youtube.com.br/shirt10',
    discord: 'shirt10#0098',
    english: 'Native/Fluent',
    countries: 'Brazil',
    state: 'MG',
    city: 'Uberlandia',
    email: 'fernando980504@gmail.com',
    phone: '(34)99246-5888',
  ),
];
