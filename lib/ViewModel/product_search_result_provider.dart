import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {

  final List<int> _selectedProductForAddToCard = [];
  List<int> get selectedProductForAddToCard => _selectedProductForAddToCard;

  int _counter = 0;
  int get counter => _counter;


}