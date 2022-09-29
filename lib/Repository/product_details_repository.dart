import 'package:online_shop_app/Model/ProductDetailsModel.dart';
import '../Data/network/base_api_services.dart';
import '../Data/network/network_api_services.dart';
import '../Resources/app_url.dart';

class ProductDetailsRepository {

  BaseApiServices _apiServices = NetworkApiService();

  Future<ProductDetailsModel> fetchProductDetails(String slug)async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.productDetailsBaseUrl + slug);
      return response = ProductDetailsModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }

}