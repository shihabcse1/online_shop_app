class ProductListModel {
  ProductListModel({
      String? status, 
      Data? data,}){
    _status = status;
    _data = data;
  }

  ProductListModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  Data? _data;
ProductListModel copyWith({  String? status,
  Data? data,
}) => ProductListModel(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// categories : []
/// products : {"count":37,"next":"https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=11&search=rice","previous":"https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=rice","results":[{"id":664,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png","charge":{"booking_price":0.0,"current_charge":3630.0,"discount_charge":null,"selling_price":4000.0,"profit":370.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":655,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png","is_primary":true,"product":664}],"slug":"-1ifu","product_name":"মোজাম্মেল স্পেশাল মিনিকেট চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                                 <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                                 ","note":"                                                                                                                                                                                                                                                                                                                                                      ","embadded_video_link":"                                                                                                                                                                           ","maximum_order":100,"stock":50,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                                                                      ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-07-31T16:22:01.001784+06:00","updated_at":"2022-09-27T12:11:56.120381+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":665,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/665/%E0%A7%A9%E0%A7%A8_3.png","charge":{"booking_price":0.0,"current_charge":1835.0,"discount_charge":null,"selling_price":2000.0,"profit":165.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":656,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/665/%E0%A7%A9%E0%A7%A8_3.png","is_primary":true,"product":665}],"slug":"-6id0","product_name":"মোজাম্মেল স্পেশাল মিনিকেট চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                          <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                          ","note":"                                                                                                                                                                                                                                                                                                                        ","embadded_video_link":"                                                                                                                                                            ","maximum_order":100,"stock":159,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                                        ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-07-31T16:26:13.352322+06:00","updated_at":"2022-09-27T12:15:26.600190+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":667,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/667/%E0%A7%A9%E0%A7%A8.png","charge":{"booking_price":0.0,"current_charge":1670.0,"discount_charge":null,"selling_price":1800.0,"profit":130.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":658,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/667/%E0%A7%A9%E0%A7%A8.png","is_primary":true,"product":667}],"slug":"-s6rz","product_name":"নজরুল স্পেশাল মিনিকেট চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                         <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                         ","note":"                                                                                                                                                                  ","embadded_video_link":"                                                                                 ","maximum_order":100,"stock":6,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                  ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-07-31T16:35:16.597380+06:00","updated_at":"2022-09-26T12:32:12.028787+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":728,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/728/saki_atash_50kg.png","charge":{"booking_price":0.0,"current_charge":2765.0,"discount_charge":null,"selling_price":3000.0,"profit":235.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":719,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/728/saki_atash_50kg.png","is_primary":true,"product":728}],"slug":"-yc6z","product_name":"সাকি সুপার আটাশ চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                          <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                                                                             ","note":"                                                                                                                                                                                                                                                                                                      ","embadded_video_link":"                                                                                                                                                   ","maximum_order":100,"stock":50,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                      ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-03T12:35:53.371944+06:00","updated_at":"2022-09-27T12:38:54.680214+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":875,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/875/saki_atash_25_kg.png","charge":{"booking_price":0.0,"current_charge":1400.0,"discount_charge":null,"selling_price":1800.0,"profit":400.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":866,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/875/saki_atash_25_kg.png","is_primary":true,"product":875}],"slug":"-ibd2","product_name":"সাকি আটাশ- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                              <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                     ","note":"                                                                                                                                                                                  ","embadded_video_link":"                                                                                         ","maximum_order":100,"stock":10,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                  ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-08T11:04:52.951560+06:00","updated_at":"2022-09-27T11:38:29.860356+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1092,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1092/new.png","charge":{"booking_price":0.0,"current_charge":3420.0,"discount_charge":null,"selling_price":3600.0,"profit":180.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1083,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1092/new.png","is_primary":true,"product":1092}],"slug":"-gaac","product_name":"রশিদ মিনিকেট চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                                    <h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(81, 81, 81); font-family: Barlow, sans-serif; font-size: 24px; letter-spacing: normal;\">Description</h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Barlow, sans-serif; font-size: 18px; line-height: 28px; color: rgb(138, 138, 138); letter-spacing: normal;\">Premium Quality Rice.<br style=\"box-sizing: inherit;\">Wonderful in taste and smell.<br style=\"box-sizing: inherit;\">Best Chinigura Rice in the market.<br style=\"box-sizing: inherit;\">Rich in Vitamins and Minerals.</p>                                                                                                                                                     ","note":"                                                                                                                                                                                                                                                                                                        ","embadded_video_link":"                                                                                                                                                    ","maximum_order":100,"stock":54,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                        ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-12T17:49:27.344006+06:00","updated_at":"2022-09-27T11:38:29.834056+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1093,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1093/new_5.png","charge":{"booking_price":0.0,"current_charge":1730.0,"discount_charge":null,"selling_price":1800.0,"profit":70.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1084,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1093/new_5.png","is_primary":true,"product":1093}],"slug":"-efqw","product_name":"রশিদ মিনিকেট চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                                  <h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(81, 81, 81); font-family: Barlow, sans-serif; font-size: 24px; letter-spacing: normal;\">Description</h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Barlow, sans-serif; font-size: 18px; line-height: 28px; color: rgb(138, 138, 138); letter-spacing: normal;\">Premium Quality Rice.<br style=\"box-sizing: inherit;\">Wonderful in taste and smell.<br style=\"box-sizing: inherit;\">Best Chinigura Rice in the market.<br style=\"box-sizing: inherit;\">Rich in Vitamins and Minerals.</p>                                                                                                                                                   ","note":"                                                                                                                                                                                                                                                                                                    ","embadded_video_link":"                                                                                                                                                  ","maximum_order":100,"stock":27,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                    ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-12T17:51:27.072501+06:00","updated_at":"2022-09-27T12:11:56.106927+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1373,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1373/%E0%A7%AB%E0%A7%A6_%E0%A6%95%E0%A6%9C_3.png","charge":{"booking_price":0.0,"current_charge":6330.0,"discount_charge":null,"selling_price":7000.0,"profit":670.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1364,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1373/%E0%A7%AB%E0%A7%A6_%E0%A6%95%E0%A6%9C_3.png","is_primary":true,"product":1373}],"slug":"-7528","product_name":"মোজাম্মেল চিনিগুড়া চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                 <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font><span style=\"color: rgb(31, 41, 55); font-family: &quot;Uni Neue&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: normal; white-space: pre-line;\">&nbsp;</span> <div><span style=\"color: rgb(31, 41, 55); font-family: &quot;Uni Neue&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: normal; white-space: pre-line;\"><br></span></div>                                                                                            ","note":"                                                                                                                                                                                        ","embadded_video_link":"                                                                                            ","maximum_order":1,"stock":50,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                        ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-31T12:55:03.235335+06:00","updated_at":"2022-09-27T11:22:28.243008+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1379,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1379/%E0%A6%B8%E0%A6%9C_1.png","charge":{"booking_price":0.0,"current_charge":3185.0,"discount_charge":null,"selling_price":3500.0,"profit":315.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1372,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1379/%E0%A6%B8%E0%A6%9C_1.png","is_primary":true,"product":1379}],"slug":"-k49t","product_name":"মোজাম্মেল চিনিগুড়া চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                 <div><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font><font color=\"#333333\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 22.4px; letter-spacing: normal;\"><br></span></font></div>                                                                                  ","note":"                                                                                                                                                                  ","embadded_video_link":"                                                                                 ","maximum_order":100,"stock":19,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                  ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-09-21T16:28:05.922847+06:00","updated_at":"2022-09-27T11:23:11.674335+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1380,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1380/Add_a_heading_1.png","charge":{"booking_price":0.0,"current_charge":2585.0,"discount_charge":null,"selling_price":2900.0,"profit":315.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1373,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1380/Add_a_heading_1.png","is_primary":true,"product":1380}],"slug":"-2yay","product_name":"নুরজাহান সুপার ফাইন (পাইজাম) চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                      <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                      ","note":"                                                                                                ","embadded_video_link":"                                                ","maximum_order":100,"stock":47,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-09-23T12:46:09.975431+06:00","updated_at":"2022-09-27T11:35:45.021099+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]}]}

class Data {
  Data({
      List<dynamic>? categories, 
      Products? products,}){
    _categories = categories;
    _products = products;
}

  Data.fromJson(dynamic json) {
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(json.fromJson(v));
      });
    }
    _products = json['products'] != null ? Products.fromJson(json['products']) : null;
  }
  List<dynamic>? _categories;
  Products? _products;
Data copyWith({  List<dynamic>? categories,
  Products? products,
}) => Data(  categories: categories ?? _categories,
  products: products ?? _products,
);
  List<dynamic>? get categories => _categories;
  Products? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    if (_products != null) {
      map['products'] = _products?.toJson();
    }
    return map;
  }

}

/// count : 37
/// next : "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=11&search=rice"
/// previous : "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=rice"
/// results : [{"id":664,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png","charge":{"booking_price":0.0,"current_charge":3630.0,"discount_charge":null,"selling_price":4000.0,"profit":370.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":655,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png","is_primary":true,"product":664}],"slug":"-1ifu","product_name":"মোজাম্মেল স্পেশাল মিনিকেট চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                                 <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                                 ","note":"                                                                                                                                                                                                                                                                                                                                                      ","embadded_video_link":"                                                                                                                                                                           ","maximum_order":100,"stock":50,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                                                                      ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-07-31T16:22:01.001784+06:00","updated_at":"2022-09-27T12:11:56.120381+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":665,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/665/%E0%A7%A9%E0%A7%A8_3.png","charge":{"booking_price":0.0,"current_charge":1835.0,"discount_charge":null,"selling_price":2000.0,"profit":165.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":656,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/665/%E0%A7%A9%E0%A7%A8_3.png","is_primary":true,"product":665}],"slug":"-6id0","product_name":"মোজাম্মেল স্পেশাল মিনিকেট চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                          <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                          ","note":"                                                                                                                                                                                                                                                                                                                        ","embadded_video_link":"                                                                                                                                                            ","maximum_order":100,"stock":159,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                                        ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-07-31T16:26:13.352322+06:00","updated_at":"2022-09-27T12:15:26.600190+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":667,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/667/%E0%A7%A9%E0%A7%A8.png","charge":{"booking_price":0.0,"current_charge":1670.0,"discount_charge":null,"selling_price":1800.0,"profit":130.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":658,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/667/%E0%A7%A9%E0%A7%A8.png","is_primary":true,"product":667}],"slug":"-s6rz","product_name":"নজরুল স্পেশাল মিনিকেট চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                         <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                         ","note":"                                                                                                                                                                  ","embadded_video_link":"                                                                                 ","maximum_order":100,"stock":6,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                  ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-07-31T16:35:16.597380+06:00","updated_at":"2022-09-26T12:32:12.028787+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":728,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/728/saki_atash_50kg.png","charge":{"booking_price":0.0,"current_charge":2765.0,"discount_charge":null,"selling_price":3000.0,"profit":235.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":719,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/728/saki_atash_50kg.png","is_primary":true,"product":728}],"slug":"-yc6z","product_name":"সাকি সুপার আটাশ চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                          <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                                                                             ","note":"                                                                                                                                                                                                                                                                                                      ","embadded_video_link":"                                                                                                                                                   ","maximum_order":100,"stock":50,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                      ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-03T12:35:53.371944+06:00","updated_at":"2022-09-27T12:38:54.680214+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":875,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/875/saki_atash_25_kg.png","charge":{"booking_price":0.0,"current_charge":1400.0,"discount_charge":null,"selling_price":1800.0,"profit":400.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":866,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/875/saki_atash_25_kg.png","is_primary":true,"product":875}],"slug":"-ibd2","product_name":"সাকি আটাশ- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                              <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                     ","note":"                                                                                                                                                                                  ","embadded_video_link":"                                                                                         ","maximum_order":100,"stock":10,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                  ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-08T11:04:52.951560+06:00","updated_at":"2022-09-27T11:38:29.860356+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1092,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1092/new.png","charge":{"booking_price":0.0,"current_charge":3420.0,"discount_charge":null,"selling_price":3600.0,"profit":180.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1083,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1092/new.png","is_primary":true,"product":1092}],"slug":"-gaac","product_name":"রশিদ মিনিকেট চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                                    <h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(81, 81, 81); font-family: Barlow, sans-serif; font-size: 24px; letter-spacing: normal;\">Description</h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Barlow, sans-serif; font-size: 18px; line-height: 28px; color: rgb(138, 138, 138); letter-spacing: normal;\">Premium Quality Rice.<br style=\"box-sizing: inherit;\">Wonderful in taste and smell.<br style=\"box-sizing: inherit;\">Best Chinigura Rice in the market.<br style=\"box-sizing: inherit;\">Rich in Vitamins and Minerals.</p>                                                                                                                                                     ","note":"                                                                                                                                                                                                                                                                                                        ","embadded_video_link":"                                                                                                                                                    ","maximum_order":100,"stock":54,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                        ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-12T17:49:27.344006+06:00","updated_at":"2022-09-27T11:38:29.834056+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1093,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1093/new_5.png","charge":{"booking_price":0.0,"current_charge":1730.0,"discount_charge":null,"selling_price":1800.0,"profit":70.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1084,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1093/new_5.png","is_primary":true,"product":1093}],"slug":"-efqw","product_name":"রশিদ মিনিকেট চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                                                                                  <h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(81, 81, 81); font-family: Barlow, sans-serif; font-size: 24px; letter-spacing: normal;\">Description</h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Barlow, sans-serif; font-size: 18px; line-height: 28px; color: rgb(138, 138, 138); letter-spacing: normal;\">Premium Quality Rice.<br style=\"box-sizing: inherit;\">Wonderful in taste and smell.<br style=\"box-sizing: inherit;\">Best Chinigura Rice in the market.<br style=\"box-sizing: inherit;\">Rich in Vitamins and Minerals.</p>                                                                                                                                                   ","note":"                                                                                                                                                                                                                                                                                                    ","embadded_video_link":"                                                                                                                                                  ","maximum_order":100,"stock":27,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                                                                                                                                    ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-12T17:51:27.072501+06:00","updated_at":"2022-09-27T12:11:56.106927+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1373,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1373/%E0%A7%AB%E0%A7%A6_%E0%A6%95%E0%A6%9C_3.png","charge":{"booking_price":0.0,"current_charge":6330.0,"discount_charge":null,"selling_price":7000.0,"profit":670.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1364,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1373/%E0%A7%AB%E0%A7%A6_%E0%A6%95%E0%A6%9C_3.png","is_primary":true,"product":1373}],"slug":"-7528","product_name":"মোজাম্মেল চিনিগুড়া চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                 <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font><span style=\"color: rgb(31, 41, 55); font-family: &quot;Uni Neue&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: normal; white-space: pre-line;\">&nbsp;</span> <div><span style=\"color: rgb(31, 41, 55); font-family: &quot;Uni Neue&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; letter-spacing: normal; white-space: pre-line;\"><br></span></div>                                                                                            ","note":"                                                                                                                                                                                        ","embadded_video_link":"                                                                                            ","maximum_order":1,"stock":50,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                                        ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-08-31T12:55:03.235335+06:00","updated_at":"2022-09-27T11:22:28.243008+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1379,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1379/%E0%A6%B8%E0%A6%9C_1.png","charge":{"booking_price":0.0,"current_charge":3185.0,"discount_charge":null,"selling_price":3500.0,"profit":315.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1372,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1379/%E0%A6%B8%E0%A6%9C_1.png","is_primary":true,"product":1379}],"slug":"-k49t","product_name":"মোজাম্মেল চিনিগুড়া চাল- ২৫ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                                                                 <div><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font><font color=\"#333333\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 22.4px; letter-spacing: normal;\"><br></span></font></div>                                                                                  ","note":"                                                                                                                                                                  ","embadded_video_link":"                                                                                 ","maximum_order":100,"stock":19,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                                                                                  ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-09-21T16:28:05.922847+06:00","updated_at":"2022-09-27T11:23:11.674335+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]},{"id":1380,"brand":{"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"},"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1380/Add_a_heading_1.png","charge":{"booking_price":0.0,"current_charge":2585.0,"discount_charge":null,"selling_price":2900.0,"profit":315.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null},"images":[{"id":1373,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1380/Add_a_heading_1.png","is_primary":true,"product":1380}],"slug":"-2yay","product_name":"নুরজাহান সুপার ফাইন (পাইজাম) চাল- ৫০ কেজি","model":"","commission_type":"Percent","amount":"0.00","tag":"","description":"                                      <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                      ","note":"                                                                                                ","embadded_video_link":"                                                ","maximum_order":100,"stock":47,"is_back_order":false,"specification":"<|>","warranty":"                                                                                                ","pre_order":false,"product_review":5,"is_seller":false,"is_phone":false,"will_show_emi":false,"badge":null,"is_active":true,"created_at":"2021-09-23T12:46:09.975431+06:00","updated_at":"2022-09-27T11:35:45.021099+06:00","language":null,"seller":"SupplyLine","combo":null,"created_by":"qtecsl","updated_by":null,"category":[18],"related_product":[],"filter_value":[]}]

class Products {
  Products({
      num? count, 
      String? next, 
      String? previous, 
      List<Results>? results,}){
    _count = count;
    _next = next;
    _previous = previous;
    _results = results;
}

  Products.fromJson(dynamic json) {
    _count = json['count'];
    _next = json['next'];
    _previous = json['previous'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }
  num? _count;
  String? _next;
  String? _previous;
  List<Results>? _results;
Products copyWith({  num? count,
  String? next,
  String? previous,
  List<Results>? results,
}) => Products(  count: count ?? _count,
  next: next ?? _next,
  previous: previous ?? _previous,
  results: results ?? _results,
);
  num? get count => _count;
  String? get next => _next;
  String? get previous => _previous;
  List<Results>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['next'] = _next;
    map['previous'] = _previous;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 664
/// brand : {"name":"Rice","image":"https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png","header_image":null,"slug":"rice"}
/// image : "https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png"
/// charge : {"booking_price":0.0,"current_charge":3630.0,"discount_charge":null,"selling_price":4000.0,"profit":370.0,"is_event":false,"event_id":null,"highlight":false,"highlight_id":null,"groupping":false,"groupping_id":null,"campaign_section_id":null,"campaign_section":false,"message":null}
/// images : [{"id":655,"image":"https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png","is_primary":true,"product":664}]
/// slug : "-1ifu"
/// product_name : "মোজাম্মেল স্পেশাল মিনিকেট চাল- ৫০ কেজি"
/// model : ""
/// commission_type : "Percent"
/// amount : "0.00"
/// tag : ""
/// description : "                                                                                                                                                 <font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font>                                                                                                                                                 "
/// note : "                                                                                                                                                                                                                                                                                                                                                      "
/// embadded_video_link : "                                                                                                                                                                           "
/// maximum_order : 100
/// stock : 50
/// is_back_order : false
/// specification : "<|>"
/// warranty : "                                                                                                                                                                                                                                                                                                                                                      "
/// pre_order : false
/// product_review : 5
/// is_seller : false
/// is_phone : false
/// will_show_emi : false
/// badge : null
/// is_active : true
/// created_at : "2021-07-31T16:22:01.001784+06:00"
/// updated_at : "2022-09-27T12:11:56.120381+06:00"
/// language : null
/// seller : "SupplyLine"
/// combo : null
/// created_by : "qtecsl"
/// updated_by : null
/// category : [18]
/// related_product : []
/// filter_value : []

class Results {
  Results({
      num? id, 
      Brand? brand, 
      String? image, 
      Charge? charge, 
      List<Images>? images, 
      String? slug, 
      String? productName, 
      String? model, 
      String? commissionType, 
      String? amount, 
      String? tag, 
      String? description, 
      String? note, 
      String? embaddedVideoLink, 
      num? maximumOrder, 
      num? stock, 
      bool? isBackOrder, 
      String? specification, 
      String? warranty, 
      bool? preOrder, 
      num? productReview, 
      bool? isSeller, 
      bool? isPhone, 
      bool? willShowEmi, 
      dynamic badge, 
      bool? isActive, 
      String? createdAt, 
      String? updatedAt, 
      dynamic language, 
      String? seller, 
      dynamic combo, 
      String? createdBy, 
      dynamic updatedBy, 
      List<num>? category, 
      List<dynamic>? relatedProduct, 
      List<dynamic>? filterValue,}){
    _id = id;
    _brand = brand;
    _image = image;
    _charge = charge;
    _images = images;
    _slug = slug;
    _productName = productName;
    _model = model;
    _commissionType = commissionType;
    _amount = amount;
    _tag = tag;
    _description = description;
    _note = note;
    _embaddedVideoLink = embaddedVideoLink;
    _maximumOrder = maximumOrder;
    _stock = stock;
    _isBackOrder = isBackOrder;
    _specification = specification;
    _warranty = warranty;
    _preOrder = preOrder;
    _productReview = productReview;
    _isSeller = isSeller;
    _isPhone = isPhone;
    _willShowEmi = willShowEmi;
    _badge = badge;
    _isActive = isActive;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _language = language;
    _seller = seller;
    _combo = combo;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _category = category;
    _relatedProduct = relatedProduct;
    _filterValue = filterValue;
}

  Results.fromJson(dynamic json) {
    _id = json['id'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    _image = json['image'];
    _charge = json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _slug = json['slug'];
    _productName = json['product_name'];
    _model = json['model'];
    _commissionType = json['commission_type'];
    _amount = json['amount'];
    _tag = json['tag'];
    _description = json['description'];
    _note = json['note'];
    _embaddedVideoLink = json['embadded_video_link'];
    _maximumOrder = json['maximum_order'];
    _stock = json['stock'];
    _isBackOrder = json['is_back_order'];
    _specification = json['specification'];
    _warranty = json['warranty'];
    _preOrder = json['pre_order'];
    _productReview = json['product_review'];
    _isSeller = json['is_seller'];
    _isPhone = json['is_phone'];
    _willShowEmi = json['will_show_emi'];
    _badge = json['badge'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _language = json['language'];
    _seller = json['seller'];
    _combo = json['combo'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _category = json['category'] != null ? json['category'].cast<num>() : [];
    if (json['related_product'] != null) {
      _relatedProduct = [];
      json['related_product'].forEach((v) {
        _relatedProduct?.add(json.fromJson(v));
      });
    }
    if (json['filter_value'] != null) {
      _filterValue = [];
      json['filter_value'].forEach((v) {
        _filterValue?.add(json.fromJson(v));
      });
    }
  }
  num? _id;
  Brand? _brand;
  String? _image;
  Charge? _charge;
  List<Images>? _images;
  String? _slug;
  String? _productName;
  String? _model;
  String? _commissionType;
  String? _amount;
  String? _tag;
  String? _description;
  String? _note;
  String? _embaddedVideoLink;
  num? _maximumOrder;
  num? _stock;
  bool? _isBackOrder;
  String? _specification;
  String? _warranty;
  bool? _preOrder;
  num? _productReview;
  bool? _isSeller;
  bool? _isPhone;
  bool? _willShowEmi;
  dynamic _badge;
  bool? _isActive;
  String? _createdAt;
  String? _updatedAt;
  dynamic _language;
  String? _seller;
  dynamic _combo;
  String? _createdBy;
  dynamic _updatedBy;
  List<num>? _category;
  List<dynamic>? _relatedProduct;
  List<dynamic>? _filterValue;
Results copyWith({  num? id,
  Brand? brand,
  String? image,
  Charge? charge,
  List<Images>? images,
  String? slug,
  String? productName,
  String? model,
  String? commissionType,
  String? amount,
  String? tag,
  String? description,
  String? note,
  String? embaddedVideoLink,
  num? maximumOrder,
  num? stock,
  bool? isBackOrder,
  String? specification,
  String? warranty,
  bool? preOrder,
  num? productReview,
  bool? isSeller,
  bool? isPhone,
  bool? willShowEmi,
  dynamic badge,
  bool? isActive,
  String? createdAt,
  String? updatedAt,
  dynamic language,
  String? seller,
  dynamic combo,
  String? createdBy,
  dynamic updatedBy,
  List<num>? category,
  List<dynamic>? relatedProduct,
  List<dynamic>? filterValue,
}) => Results(  id: id ?? _id,
  brand: brand ?? _brand,
  image: image ?? _image,
  charge: charge ?? _charge,
  images: images ?? _images,
  slug: slug ?? _slug,
  productName: productName ?? _productName,
  model: model ?? _model,
  commissionType: commissionType ?? _commissionType,
  amount: amount ?? _amount,
  tag: tag ?? _tag,
  description: description ?? _description,
  note: note ?? _note,
  embaddedVideoLink: embaddedVideoLink ?? _embaddedVideoLink,
  maximumOrder: maximumOrder ?? _maximumOrder,
  stock: stock ?? _stock,
  isBackOrder: isBackOrder ?? _isBackOrder,
  specification: specification ?? _specification,
  warranty: warranty ?? _warranty,
  preOrder: preOrder ?? _preOrder,
  productReview: productReview ?? _productReview,
  isSeller: isSeller ?? _isSeller,
  isPhone: isPhone ?? _isPhone,
  willShowEmi: willShowEmi ?? _willShowEmi,
  badge: badge ?? _badge,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  language: language ?? _language,
  seller: seller ?? _seller,
  combo: combo ?? _combo,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  category: category ?? _category,
  relatedProduct: relatedProduct ?? _relatedProduct,
  filterValue: filterValue ?? _filterValue,
);
  num? get id => _id;
  Brand? get brand => _brand;
  String? get image => _image;
  Charge? get charge => _charge;
  List<Images>? get images => _images;
  String? get slug => _slug;
  String? get productName => _productName;
  String? get model => _model;
  String? get commissionType => _commissionType;
  String? get amount => _amount;
  String? get tag => _tag;
  String? get description => _description;
  String? get note => _note;
  String? get embaddedVideoLink => _embaddedVideoLink;
  num? get maximumOrder => _maximumOrder;
  num? get stock => _stock;
  bool? get isBackOrder => _isBackOrder;
  String? get specification => _specification;
  String? get warranty => _warranty;
  bool? get preOrder => _preOrder;
  num? get productReview => _productReview;
  bool? get isSeller => _isSeller;
  bool? get isPhone => _isPhone;
  bool? get willShowEmi => _willShowEmi;
  dynamic get badge => _badge;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get language => _language;
  String? get seller => _seller;
  dynamic get combo => _combo;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;
  List<num>? get category => _category;
  List<dynamic>? get relatedProduct => _relatedProduct;
  List<dynamic>? get filterValue => _filterValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    map['image'] = _image;
    if (_charge != null) {
      map['charge'] = _charge?.toJson();
    }
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    map['slug'] = _slug;
    map['product_name'] = _productName;
    map['model'] = _model;
    map['commission_type'] = _commissionType;
    map['amount'] = _amount;
    map['tag'] = _tag;
    map['description'] = _description;
    map['note'] = _note;
    map['embadded_video_link'] = _embaddedVideoLink;
    map['maximum_order'] = _maximumOrder;
    map['stock'] = _stock;
    map['is_back_order'] = _isBackOrder;
    map['specification'] = _specification;
    map['warranty'] = _warranty;
    map['pre_order'] = _preOrder;
    map['product_review'] = _productReview;
    map['is_seller'] = _isSeller;
    map['is_phone'] = _isPhone;
    map['will_show_emi'] = _willShowEmi;
    map['badge'] = _badge;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['language'] = _language;
    map['seller'] = _seller;
    map['combo'] = _combo;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['category'] = _category;
    if (_relatedProduct != null) {
      map['related_product'] = _relatedProduct?.map((v) => v.toJson()).toList();
    }
    if (_filterValue != null) {
      map['filter_value'] = _filterValue?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 655
/// image : "https://d1ojphegpburrh.cloudfront.net/media/images/product/None/664/%E0%A7%A9%E0%A7%A8_2.png"
/// is_primary : true
/// product : 664

class Images {
  Images({
      num? id, 
      String? image, 
      bool? isPrimary, 
      num? product,}){
    _id = id;
    _image = image;
    _isPrimary = isPrimary;
    _product = product;
}

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _isPrimary = json['is_primary'];
    _product = json['product'];
  }
  num? _id;
  String? _image;
  bool? _isPrimary;
  num? _product;
Images copyWith({  num? id,
  String? image,
  bool? isPrimary,
  num? product,
}) => Images(  id: id ?? _id,
  image: image ?? _image,
  isPrimary: isPrimary ?? _isPrimary,
  product: product ?? _product,
);
  num? get id => _id;
  String? get image => _image;
  bool? get isPrimary => _isPrimary;
  num? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image'] = _image;
    map['is_primary'] = _isPrimary;
    map['product'] = _product;
    return map;
  }

}

/// booking_price : 0.0
/// current_charge : 3630.0
/// discount_charge : null
/// selling_price : 4000.0
/// profit : 370.0
/// is_event : false
/// event_id : null
/// highlight : false
/// highlight_id : null
/// groupping : false
/// groupping_id : null
/// campaign_section_id : null
/// campaign_section : false
/// message : null

class Charge {
  Charge({
      num? bookingPrice, 
      num? currentCharge, 
      dynamic discountCharge, 
      num? sellingPrice, 
      num? profit, 
      bool? isEvent, 
      dynamic eventId, 
      bool? highlight, 
      dynamic highlightId, 
      bool? groupping, 
      dynamic grouppingId, 
      dynamic campaignSectionId, 
      bool? campaignSection, 
      dynamic message,}){
    _bookingPrice = bookingPrice;
    _currentCharge = currentCharge;
    _discountCharge = discountCharge;
    _sellingPrice = sellingPrice;
    _profit = profit;
    _isEvent = isEvent;
    _eventId = eventId;
    _highlight = highlight;
    _highlightId = highlightId;
    _groupping = groupping;
    _grouppingId = grouppingId;
    _campaignSectionId = campaignSectionId;
    _campaignSection = campaignSection;
    _message = message;
}

  Charge.fromJson(dynamic json) {
    _bookingPrice = json['booking_price'];
    _currentCharge = json['current_charge'];
    _discountCharge = json['discount_charge'];
    _sellingPrice = json['selling_price'];
    _profit = json['profit'];
    _isEvent = json['is_event'];
    _eventId = json['event_id'];
    _highlight = json['highlight'];
    _highlightId = json['highlight_id'];
    _groupping = json['groupping'];
    _grouppingId = json['groupping_id'];
    _campaignSectionId = json['campaign_section_id'];
    _campaignSection = json['campaign_section'];
    _message = json['message'];
  }
  num? _bookingPrice;
  num? _currentCharge;
  dynamic _discountCharge;
  num? _sellingPrice;
  num? _profit;
  bool? _isEvent;
  dynamic _eventId;
  bool? _highlight;
  dynamic _highlightId;
  bool? _groupping;
  dynamic _grouppingId;
  dynamic _campaignSectionId;
  bool? _campaignSection;
  dynamic _message;
Charge copyWith({  num? bookingPrice,
  num? currentCharge,
  dynamic discountCharge,
  num? sellingPrice,
  num? profit,
  bool? isEvent,
  dynamic eventId,
  bool? highlight,
  dynamic highlightId,
  bool? groupping,
  dynamic grouppingId,
  dynamic campaignSectionId,
  bool? campaignSection,
  dynamic message,
}) => Charge(  bookingPrice: bookingPrice ?? _bookingPrice,
  currentCharge: currentCharge ?? _currentCharge,
  discountCharge: discountCharge ?? _discountCharge,
  sellingPrice: sellingPrice ?? _sellingPrice,
  profit: profit ?? _profit,
  isEvent: isEvent ?? _isEvent,
  eventId: eventId ?? _eventId,
  highlight: highlight ?? _highlight,
  highlightId: highlightId ?? _highlightId,
  groupping: groupping ?? _groupping,
  grouppingId: grouppingId ?? _grouppingId,
  campaignSectionId: campaignSectionId ?? _campaignSectionId,
  campaignSection: campaignSection ?? _campaignSection,
  message: message ?? _message,
);
  num? get bookingPrice => _bookingPrice;
  num? get currentCharge => _currentCharge;
  dynamic get discountCharge => _discountCharge;
  num? get sellingPrice => _sellingPrice;
  num? get profit => _profit;
  bool? get isEvent => _isEvent;
  dynamic get eventId => _eventId;
  bool? get highlight => _highlight;
  dynamic get highlightId => _highlightId;
  bool? get groupping => _groupping;
  dynamic get grouppingId => _grouppingId;
  dynamic get campaignSectionId => _campaignSectionId;
  bool? get campaignSection => _campaignSection;
  dynamic get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['booking_price'] = _bookingPrice;
    map['current_charge'] = _currentCharge;
    map['discount_charge'] = _discountCharge;
    map['selling_price'] = _sellingPrice;
    map['profit'] = _profit;
    map['is_event'] = _isEvent;
    map['event_id'] = _eventId;
    map['highlight'] = _highlight;
    map['highlight_id'] = _highlightId;
    map['groupping'] = _groupping;
    map['groupping_id'] = _grouppingId;
    map['campaign_section_id'] = _campaignSectionId;
    map['campaign_section'] = _campaignSection;
    map['message'] = _message;
    return map;
  }

}

/// name : "Rice"
/// image : "https://d1ojphegpburrh.cloudfront.net/media/brand_images/supplyline_logo.png"
/// header_image : null
/// slug : "rice"

class Brand {
  Brand({
      String? name, 
      String? image, 
      dynamic headerImage, 
      String? slug,}){
    _name = name;
    _image = image;
    _headerImage = headerImage;
    _slug = slug;
}

  Brand.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _headerImage = json['header_image'];
    _slug = json['slug'];
  }
  String? _name;
  String? _image;
  dynamic _headerImage;
  String? _slug;
Brand copyWith({  String? name,
  String? image,
  dynamic headerImage,
  String? slug,
}) => Brand(  name: name ?? _name,
  image: image ?? _image,
  headerImage: headerImage ?? _headerImage,
  slug: slug ?? _slug,
);
  String? get name => _name;
  String? get image => _image;
  dynamic get headerImage => _headerImage;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['header_image'] = _headerImage;
    map['slug'] = _slug;
    return map;
  }

}