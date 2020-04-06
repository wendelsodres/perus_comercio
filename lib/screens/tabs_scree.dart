import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorite_business.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Perus Comércio'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Lojas',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            // FavoriteBusiness(),
          ],
        ),
      ),
    );
  }
}
