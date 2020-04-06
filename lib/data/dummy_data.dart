
import '../models/category.dart';
import '../models/comercio.dart';

import 'package:flutter/material.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Confecção',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Informática',
    color: Colors.orange,
  ),
   Category(
    id: 'c3',
    title: 'Limpeza',
    color: Colors.red,
  ),
  Category(
    id: 'c4',
    title: 'Alimentos',
    color: Colors.green,
  ),
   Category(
    id: 'c5',
    title: 'Lazer',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Transporte',
    color: Colors.brown,
  ),
   Category(
    id: 'c7',
    title: 'Beleza',
    color: Colors.cyan,
  ),
  Category(
    id: 'c8',
    title: 'Esporte',
    color: Colors.teal,
  ),
   Category(
    id: 'c9',
    title: 'Imóveis',
    color: Colors.purple,
  ),
  Category(
    id: 'c10',
    title: 'Serviços',
    color: Colors.orange,
  ),
];

const DUMMY_BUSINNES = const [
  Business (
    id: 'b1',
    categories: ['c1','c2'],
    title: 'WSS Informática Perus LTDA',
    imageUrl: 'https://blog.egestor.com.br/wp-content/uploads/2018/01/afinal-o-que-define-as-receitas-e-despesas-de-uma-empresa.jpeg',
    phone: '11 3915-5473'
  ),

   Business (
    id: 'b2',
    categories: ['c1','c2'],
    title: 'Fernando Silva',
    imageUrl: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/dc1cb365648741.5afd2b76bf99f.png',
    phone: '11 3915-5473'
  ),

];