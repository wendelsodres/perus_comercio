import 'package:flutter/material.dart';
import '../models/comercio.dart';
import '../components/main_drawer.dart';

import 'categories_screen.dart';
import 'favorite_business.dart';

class TabScreenBottom extends StatefulWidget {
  final List<Business> favoriteBusiness;

  const TabScreenBottom(this.favoriteBusiness);

  @override
  _TabScreenBottomState createState() => _TabScreenBottomState();
}

class _TabScreenBottomState extends State<TabScreenBottom> {
  int _selectedScreenIndex = 0;

  List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Categorias',
        'screen': CategoriesScreen(),
      },
      {
        'title': 'Favoritos',
        'screen': FavoriteBusiness(widget.favoriteBusiness),
      },
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title']),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColorDark,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categorias'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favoritos'),
          ),
        ],
      ),
    );
  }
}
