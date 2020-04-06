import 'package:flutter/material.dart';
import 'models/comercio.dart';
import 'screens/settings_screen.dart';

import 'screens/tab_bottom_screen.dart';
import 'screens/business_details_screen.dart';

import 'screens/categories_by.dart';
import 'utils/app_routes.dart';

void main() => runApp(PerusComercio());

class PerusComercio extends StatefulWidget {
  @override
  _PerusComercioState createState() => _PerusComercioState();
}

class _PerusComercioState extends State<PerusComercio> {
  List<Business> _favoriteBusiness = [];

  void _toogleFavorite(Business business) {
    setState(() {
      _favoriteBusiness.contains(business)
          ? _favoriteBusiness.remove(business)
          : _favoriteBusiness.add(business);
    });
  }

  bool _isFavorite(Business business) {
    return _favoriteBusiness.contains(business);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perus Comércio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3F51B5),
        primaryColorLight: Color(0xFF757DE8),
        primaryColorDark: Color(0xFF002984),
        accentColor: Color(0xFF4B87CC),
        canvasColor: Color(0xFFF0F0F5),
        fontFamily: 'BalooDa2',
        textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
              fontSize: 20,
            )),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabScreenBottom(_favoriteBusiness),
        AppRoutes.CATEGORIES: (ctx) => CategoriesBy(),
        AppRoutes.BUSINESS_DETAILS: (ctx) =>
            BusinessDetailScreen(_toogleFavorite, _isFavorite),
        AppRoutes.BUSINESS_SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
