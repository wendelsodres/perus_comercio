import 'package:flutter/material.dart';

import '../models/comercio.dart';

class BusinessDetailScreen extends StatelessWidget {

  final Function(Business) onToggleFavorite;
  final bool Function(Business) isFavorite;

  const BusinessDetailScreen(this.onToggleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final business = ModalRoute.of(context).settings.arguments as Business;

    return Scaffold(
      appBar: AppBar(
        title: Text(business.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              business.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(business.title),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(business) ? Icons.star : Icons.star_border),
        onPressed: () {
          onToggleFavorite(business);
        },
      ),
    );
  }
}
