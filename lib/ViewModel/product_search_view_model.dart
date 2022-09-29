import 'package:flutter/material.dart';
import 'package:online_shop_app/Repository/product_search_repository.dart';
import '../Data/response/api_response.dart';
import '../Model/ProductListModel.dart';

class ProductViewViewModel with ChangeNotifier {

  final _myRepo = ProductSearchRepository();

  ApiResponse<ProductListModel> productList = ApiResponse.loading();

  setProductList(ApiResponse<ProductListModel> response){
    productList = response;
    notifyListeners();
  }

  Future<void> fetchProductListApi ()async{

    setProductList(ApiResponse.loading());
    _myRepo.fetchProductList().then((value){

      setProductList(ApiResponse.completed(value));

    }).onError((error, stackTrace){
      setProductList(ApiResponse.error(error.toString()));
    });
  }

}