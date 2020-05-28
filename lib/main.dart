import 'package:flutter/material.dart';
import 'screens/abaDeCadaJogo.dart';
import 'screens/infodosplayers_screen.dart';
import 'utils/app_routes.dart';
import 'screens/tabs_screen.dart';
import 'models/perfildosplayers.dart';
import 'data/listas_data.dart';
import 'models/filtro.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<PerfilDosPlayers> perfilsDisponiveis = LISTA_PLAYERS;

   void filtroPlayers(Filtro filtro) {
    setState(() {
      perfilsDisponiveis = LISTA_PLAYERS.where((perfils) {
        final filterTier1 = filtro.isTier1 && !perfils.isTier1;
        final filterTier2 = filtro.isTier2 && !perfils.isTier2;
        final filterTier3 = filtro.isTier3 && !perfils.isTier3;
        final filterTier4 = filtro.isTier4 && !perfils.isTier4;
        final filterWCS = filtro.isWCS && !perfils.isWCS;
        final filterWCC = filtro.isWCC && !perfils.isWCC;
        final filterStreamer = filtro.isStreamer && !perfils.isStreamer;
        final filterBasicEnglish = filtro.isEnglishBasic && !perfils.isEnglishBasic;
        final filterMediumEnglish = filtro.isEnglishMedium && !perfils.isEnglishMedium;
        final filterAdvancedEnglish = filtro.isEnglishAdvanced && !perfils.isEnglishAdvanced;
        return !filterTier1 && !filterTier2 && !filterTier3 && !filterTier4 && !filterWCS && !filterWCC && !filterStreamer && !filterBasicEnglish && !filterMediumEnglish && !filterAdvancedEnglish;
      }).toList();
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Dream',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.LISTAS_DOS_JOGOS: (ctx) => AbaDeCadaJogo(perfilsDisponiveis),
        AppRoutes.INFO_DOS_PLAYERS: (ctx) => InfoDosPlayers(),

      },
    );
  }
}
