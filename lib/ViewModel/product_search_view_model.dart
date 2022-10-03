import 'package:flutter/material.dart';
import 'package:online_shop_app/Repository/product_search_repository.dart';
import '../Data/response/api_response.dart';
import '../Model/ProductListModel.dart';

class ProductViewViewModel with ChangeNotifier {

  int _currentPageOffset = 0;
  List<Results> productListItems = [];

  int get currentPageOffset => _currentPageOffset;

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
    setProductList(ApiResponse.loading());
    _myRepo.fetchProductList(_currentPageOffset).then((value){
      setProductList(ApiResponse.completed(value));
      productListItems.addAll(value.data.products.results);
      notifyListeners();
    }).onError((error, stackTrace){
      setProductList(ApiResponse.error(error.toString()));
    });
  }

}