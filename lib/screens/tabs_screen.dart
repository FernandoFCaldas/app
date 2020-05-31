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
    { 'title': 'Search', 'screen': FilterScreen()},
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
            leading: Image.asset('assets/icon/iconetacatransparente.png',),
            title: Text(_screens[_selectScreenIndex]['title'], style: TextStyle(color: Colors.grey[600], fontFamily: 'Righteous', fontWeight: FontWeight.w400,),),
          ),
          body: _screens[_selectScreenIndex]['screen'],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 15,
            onTap: _selectScreen,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            currentIndex: _selectScreenIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.home, color: Colors.grey[600]),
                title: Text('Home', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.grey[600])),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.white,
                icon: Icon(Icons.search, color: Colors.grey[600],),
                title: Text('Search', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.grey[600])),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.white,
                icon: Icon(Icons.add, color: Colors.grey[600],),
                title: Text('Add', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.grey[600])),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.white,
                icon: Icon(Icons.favorite, color: Colors.grey[600],),
                title: Text('Favorites', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.grey[600])),
             ),
             BottomNavigationBarItem(
               backgroundColor: Colors.white,
                icon: Icon(Icons.person, color: Colors.grey[600],),
                title: Text('Profile', style: TextStyle(fontFamily: 'Righteous', fontWeight: FontWeight.w400, color: Colors.grey[600])),
             ),
          ],
        ),
    );
  }
}