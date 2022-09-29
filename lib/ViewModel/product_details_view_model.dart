import 'package:flutter/material.dart';
import 'package:online_shop_app/Model/ProductDetailsModel.dart';
import 'package:online_shop_app/Repository/product_details_repository.dart';
import 'package:online_shop_app/View/product_details.dart';

import '../Data/response/api_response.dart';

class ProductDetailsViewViewModel with ChangeNotifier {

  final _myRepo = ProductDetailsRepository();

  ApiResponse<ProductDetailsModel> productDetails = ApiResponse.loading();

  setProductDetails(ApiResponse<ProductDetailsModel> response){
    productDetails = response;
    notifyListeners();
  }

  Future<void> fetchProductDetailsApi (String slug)async{

    setProductDetails(ApiResponse.loading());
    _myRepo.fetchProductDetails(slug).then((value){

      setProductDetails(ApiResponse.completed(value));

    }).onError((error, stackTrace){
      setProductDetails(ApiResponse.error(error.toString()));
    });
  }

}