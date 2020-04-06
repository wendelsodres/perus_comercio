import 'package:flutter/material.dart';
import '../components/business_detail.dart';
import '../models/comercio.dart';

class FavoriteBusiness extends StatelessWidget {
  final List<Business> favoriteBusiness;

  const FavoriteBusiness(this.favoriteBusiness);

  @override
  Widget build(BuildContext context) {
    if (favoriteBusiness.isEmpty) {
      return Center(
        child: Text('Nemhum comércio foi marcado como favorito'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteBusiness.length,
        itemBuilder: (ctx, index){
          return BusinessDetails(favoriteBusiness[index]);
        },
      );
    }
  }
}
