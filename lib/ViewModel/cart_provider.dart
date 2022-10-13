import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {

  final List<int> _selectedProductForAddToCard = [];
  List<int> get selectedProductForAddToCard => _selectedProductForAddToCard;

  int _counter = 0;
  int get counter => _counter;

  void _setSharePreferenceItemsForCart()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    notifyListeners();
  }

  void _getSharePreferenceItemsForCart()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart_item') ?? 0;
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
    _selectedProductForAddToCard.add(value);
    notifyListeners();
  }

  int getTotalNumberOfProductFromCart (){
    _getSharePreferenceItemsForCart();
    return _counter;
  }

}