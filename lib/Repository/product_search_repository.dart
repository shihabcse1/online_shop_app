import 'package:online_shop_app/Model/ProductListModel.dart';
import '../Data/network/base_api_services.dart';
import '../Data/network/network_api_services.dart';
import '../Resources/app_url.dart';

class ProductSearchRepository {

  BaseApiServices _apiServices = NetworkApiService();

  Future<ProductListModel> fetchProductList(int currentPageOffset)async{

    List<ProductListModel> products = [];

    try{

      dynamic response = await _apiServices.getGetApiResponse('https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=$currentPageOffset');
      // print("it's response :"+ProductListModel.fromJson(response).toString());
      // it's response :Instance of 'ProductListModel'

      return response = ProductListModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }

}