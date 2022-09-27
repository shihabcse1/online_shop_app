import 'package:flutter/material.dart';
import 'package:online_shop_app/Repository/product_search_repository.dart';

import '../Data/response/api_response.dart';
import '../Model/ProductListModel.dart';

class HomeViewViewModel with ChangeNotifier {

  final _myRepo = ProductSearchRepository();

  ApiResponse<ProductListModel> productList = ApiResponse.loading();

  setMoviesList(ApiResponse<ProductListModel> response){
    productList = response;
    notifyListeners();
  }

  Future<void> fetchMoviesListApi ()async{

    setMoviesList(ApiResponse.loading());

    _myRepo.fetchMoviesList().then((value){
      setMoviesList(ApiResponse.completed(value));

    }).onError((error, stackTrace){
      setMoviesList(ApiResponse.error(error.toString()));
    });
  }


}