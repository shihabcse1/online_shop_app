import 'package:flutter/material.dart';
import 'package:online_shop_app/Repository/product_search_repository.dart';
import '../Data/response/api_response.dart';
import '../Model/ProductListModel.dart';

class ProductViewViewModel with ChangeNotifier {

  int _currentPageOffset = 0;
  List<ProductListModel> productListItems = [];

  int get currentPageOffset => _currentPageOffset;

  void increasePageOffset (){
    _currentPageOffset++;
    notifyListeners();
  }

  final _myRepo = ProductSearchRepository();

  ApiResponse<ProductListModel> productList = ApiResponse.loading();

  setProductList(ApiResponse<ProductListModel> response){
    productList = response;
    // productListItems.addAll(response);
    // debugPrint("My response is "+response.toString());
    // My response Status is : Status.LOADING
    // My response Status is : Status.COMPLETED
    notifyListeners();
  }

  Future<void> fetchProductListApi (_currentPageOffset)async{

    setProductList(ApiResponse.loading());
    _myRepo.fetchProductList(_currentPageOffset).then((value){
      setProductList(ApiResponse.completed(value));
      //print("This is value : "+value.toString());
      //This is value : Instance of 'ProductListModel'
      //print("It's my repo "+_myRepo.toString());
      //It's my repo Instance of 'ProductSearchRepository'
      //print("Hello "+ApiResponse.completed(value).toString());
      //Hello Status : Status.COMPLETED
    }).onError((error, stackTrace){
      setProductList(ApiResponse.error(error.toString()));
    });
  }

}