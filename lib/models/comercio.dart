
import 'package:flutter/material.dart';

class Business {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String phone;

  const Business({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.phone,
  });
}