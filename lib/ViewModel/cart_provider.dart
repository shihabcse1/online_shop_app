import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {

  final List<int> _selectedValue = [];
  List<int> get selectedValue => _selectedValue;

  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;


  void _setSharePreferenceItemsForCart()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getSharePreferenceItemsForCart()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart_item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }

  void addProductToCart (){
    _counter++;
    _setSharePreferenceItemsForCart();
    notifyListeners();
  }

  void removeProductFromCart (){
    _counter--;
    _setSharePreferenceItemsForCart();
    notifyListeners();
  }

  void addPlusIconClickValue(int value) {
    _selectedValue.add(value);
    notifyListeners();
  }

  int getTotalNumberOfProductFromCart (){
    _getSharePreferenceItemsForCart();
    return _counter;
  }

}