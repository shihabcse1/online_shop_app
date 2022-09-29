import 'package:online_shop_app/Model/ProductListModel.dart';
import '../Data/network/base_api_services.dart';
import '../Data/network/network_api_services.dart';
import '../Resources/app_url.dart';

class ProductSearchRepository {

  BaseApiServices _apiServices = NetworkApiService();

  Future<ProductListModel> fetchProductList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.productsListEndPoint);
      return response = ProductListModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }

}