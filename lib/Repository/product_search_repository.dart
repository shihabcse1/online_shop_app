import 'package:online_shop_app/Model/ProductListModel.dart';
import 'package:online_shop_app/Resources/app_url.dart';
import '../Data/network/base_api_services.dart';
import '../Data/network/network_api_services.dart';

class ProductSearchRepository {

  BaseApiServices _apiServices = NetworkApiService();

  Future<ProductListModel> fetchProductList(int currentPageOffset)async{
    try{
      dynamic response = await _apiServices.getGetApiResponse('${AppUrl.productsListEndPoint}?limit=10&offset=$currentPageOffset');
      response = ProductListModel.fromJson(response);
      return response;
    }catch(e){
      throw e;
    }
  }

}