import 'package:flutter/material.dart';
import 'package:online_shop_app/Repository/product_search_repository.dart';
import '../Data/response/api_response.dart';
import '../Model/ProductListModel.dart';

class ProductViewViewModel with ChangeNotifier {

  int _currentPageOffset = 0;
  bool _isProductFetchedSuccessful = false;
  List<Results> productListItems = [];

  int get currentPageOffset => _currentPageOffset;
  bool get isProductFetchedSuccessful => _isProductFetchedSuccessful;

  void increasePageOffset (){
    _currentPageOffset++;
    notifyListeners();
  }

  final _myRepo = ProductSearchRepository();

  ApiResponse<ProductListModel> productList = ApiResponse.loading();

  setProductList(ApiResponse<ProductListModel> response){
    productList = response;
    notifyListeners();
  }

  Future<void> fetchProductListApi (_currentPageOffset)async{
    _myRepo.fetchProductList(_currentPageOffset).then((value){
      setProductList(ApiResponse.completed(value));
      productListItems.addAll(value.data.products.results);
      _isProductFetchedSuccessful = true;
      notifyListeners();
    }).onError((error, stackTrace){
      _isProductFetchedSuccessful = false;
      notifyListeners();
      setProductList(ApiResponse.error(error.toString()));
    });
  }

}