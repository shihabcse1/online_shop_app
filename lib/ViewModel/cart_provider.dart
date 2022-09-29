import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {

  final List<int> _selectedValue = [];
  List<int> get selectedValue => _selectedValue;

  void addValue(int value) {
    _selectedValue.add(value) ;
    notifyListeners();
  }

}