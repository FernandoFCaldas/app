import 'package:ProDreamAPP/screens/add_screen.dart';
import 'package:ProDreamAPP/screens/filter_screen.dart';
import 'package:ProDreamAPP/screens/meuperfil_screen.dart';
import 'package:flutter/material.dart';
import 'games_screen.dart';
import 'favorites_screen.dart';
import 'filter_screen.dart';


class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  

  int _selectScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    { 'title': 'Pro Dream', 'screen': GamesScreen()},
    { 'title': 'Search', 'screen': FilterScreen(_filtroPlayers)},
    { 'title': 'Add', 'screen': AddPerfil()},
    { 'title': 'Favorites', 'screen': FavoritesScreen()},
    { 'title': 'Profile', 'screen': MeuPerfil()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            elevation: 15,
            leading: Image.asset('assets/icon/iconelogotransparente.png', color: Colors.white24),
            title: Text(_screens[_selectScreenIndex]['title'], style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400),),
          ),
          body: _screens[_selectScreenIndex]['screen'],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 15,
            onTap: _selectScreen,
            backgroundColor: Colors.blue[900],
            selectedItemColor: Colors.white,
            currentIndex: _selectScreenIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.blue[900],
                icon: Icon(Icons.home, color: Colors.white,),
                title: Text('Home', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.white)),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.blue[900],
                icon: Icon(Icons.search, color: Colors.white,),
                title: Text('Search', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.white)),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.blue[900],
                icon: Icon(Icons.add, color: Colors.white,),
                title: Text('Add', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.white)),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.blue[900],
                icon: Icon(Icons.favorite_border, color: Colors.white,),
                title: Text('Favorites', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.white)),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.blue[900],
                icon: Icon(Icons.person_outline, color: Colors.white,),
                title: Text('Profile', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.white)),
             ),
          ],
        ),
    );
  }
}