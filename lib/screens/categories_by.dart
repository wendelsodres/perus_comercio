import 'package:flutter/material.dart';

import '../components/business_detail.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryBusiness = DUMMY_BUSINNES.where((businnes) {
      return businnes.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryBusiness.length,
        itemBuilder: (ctx, index) {
          return BusinessDetails(categoryBusiness[index]);
        },
      ),
    );
  }
}
