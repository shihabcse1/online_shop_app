import 'dart:core';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/Resources/colors.dart';
import 'package:online_shop_app/View/product_details.dart';
import 'package:online_shop_app/ViewModel/product_search_view_model.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../Data/response/status.dart';
import '../ViewModel/cart_provider.dart';
import 'item_card.dart';

class ProductSearchPage extends StatefulWidget {
  const ProductSearchPage({Key? key}) : super(key: key);

  @override
  State<ProductSearchPage> createState() => _ProductSearchPageState();
}

class _ProductSearchPageState extends State<ProductSearchPage> {

  ProductViewViewModel  productViewViewModel = ProductViewViewModel();
  final RefreshController refreshController = RefreshController(initialRefresh: true);

  @override
  void initState() {
    productViewViewModel.fetchProductListApi(productViewViewModel.currentPageOffset);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        actions: [
          Center(
            child: Badge(
              badgeContent: Consumer<CartProvider>(
                builder: (context, value , child){
                  return Text(value.getTotalNumberOfProductFromCart().toString(),style: const TextStyle(color: Colors.white));
                },
              ),
              animationDuration: const Duration(milliseconds: 300),
              animationType: BadgeAnimationType.slide,
              child: const Icon(Icons.shopping_bag_outlined, color: Colors.black45,),
            ),
          ),
          const SizedBox(width: 30.0)
        ],
      ),
      body: ChangeNotifierProvider<ProductViewViewModel>(
        create: (BuildContext context) => productViewViewModel,
        child: Consumer<ProductViewViewModel>(
          builder: (context, value, _){
            switch(value.productList.status!){
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator(),);
              case Status.ERROR:
                return Center(child: Text(value.productList.message.toString()));
              case Status.COMPLETED:
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: AppColors.whiteColor,
                          filled: true,
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                          hintText: "কাঙ্ক্ষিত পণ্যটি খুঁজুন",
                          suffixIcon: const Icon(Icons.search_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SmartRefresher(
                          controller: refreshController,
                          enablePullUp: true,
                          onRefresh: () async {
                            if (productViewViewModel.isProductFetchedSuccessful) {
                            refreshController.refreshCompleted();
                            } else {
                              refreshController.refreshFailed();
                            }
                          },
                          onLoading: () async {
                            productViewViewModel.increasePageOffset();
                            await productViewViewModel.fetchProductListApi(productViewViewModel.currentPageOffset);
                            if (productViewViewModel.isProductFetchedSuccessful) {
                              refreshController.loadComplete();
                            } else {
                              refreshController.loadFailed();
                            }
                          },
                          child: GridView.builder(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                              itemCount: productViewViewModel.productListItems.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 40,
                                crossAxisSpacing: 12,
                                childAspectRatio: 0.75,
                              ),
                              itemBuilder: (context, index) => ItemCard(
                                product: productViewViewModel.productListItems[index],
                                index: index,
                                onPress: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetails(productSlug: productViewViewModel.productListItems[index].slug),
                                    )),
                              )),
                        ),
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
