import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.bottomRight,
            child: Text(
              'Perus Comércio',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
          _createItem(
            Icons.restaurant,
            'Lojas',
            () => Navigator.of(context).pushNamed(AppRoutes.HOME),
          ),
          _createItem(
              Icons.settings,
              'Configurações',
              () => {
                    Navigator.pop(context),
                    Navigator.of(context)
                        .pushNamed(AppRoutes.BUSINESS_SETTINGS),
                  }),
        ],
      ),
    );
  }
}
