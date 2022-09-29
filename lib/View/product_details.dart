import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:online_shop_app/Data/response/status.dart';
import 'package:online_shop_app/ViewModel/product_details_view_model.dart';
import 'package:provider/provider.dart';
import '../Resources/colors.dart';

class ProductDetails extends StatefulWidget {

  final String productSlug;
  const ProductDetails({Key? key, required this.productSlug}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  ProductDetailsViewViewModel productDetailsViewViewModel = ProductDetailsViewViewModel();

  @override
  void initState() {
    productDetailsViewViewModel.fetchProductDetailsApi(widget.productSlug);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    //final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        foregroundColor: AppColors.blackColor400,
        elevation: 0,
        title: const Text("প্রোডাক্ট ডিটেইল"),
      ),
      body: ChangeNotifierProvider<ProductDetailsViewViewModel>(
          create: (BuildContext context) => productDetailsViewViewModel,
        child: Consumer<ProductDetailsViewViewModel>(
          builder: (context, value, _){
            switch(value.productDetails.status!){
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator(),);
              case Status.ERROR:
                return Center(child: Text(value.productDetails.message.toString()));
              case Status.COMPLETED:
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 308,
                            width: 248,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network(value.productDetails.data!.data.image.toString()),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("প্রিঞ্জেলস অনিওন চিপস ৪২ গ্রাম",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'ব্রান্ডঃ ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.blackColor400
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'প্রিঞ্জেলস',
                                          style: TextStyle(
                                            color: AppColors.blackColor400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Container(
                                    height: 5,
                                    width: 5,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.priceTextColor,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: 'ডিস্ট্রিবিউটরঃ ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.blackColor400
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'মোঃ মোবারাক হোসেন',
                                          style: TextStyle(
                                            color: AppColors.blackColor400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10, bottom: 4, left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("ক্রয়মূল্যঃ",
                                                  style: TextStyle(
                                                      color: AppColors.priceTextColor,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                              Text("৳${value.productDetails.data!.data.charge.currentCharge}",
                                                  style: const TextStyle(
                                                      color: AppColors.priceTextColor,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("বিক্রয়মূল্যঃ", style: TextStyle(fontWeight: FontWeight.w500),),
                                              Text("৳${value.productDetails.data!.data.charge.sellingPrice}", style: const TextStyle(fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                        ),
                                        const DottedLine(
                                          direction: Axis.horizontal,
                                          lineLength: double.infinity,
                                          lineThickness: 1.0,
                                          dashLength: 4.0,
                                          dashColor: AppColors.blackColor400,
                                          dashRadius: 0.0,
                                          dashGapLength: 4.0,
                                          dashGapColor: Colors.transparent,
                                          dashGapRadius: 0.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("লাভঃ", style: TextStyle(fontWeight: FontWeight.w500),),
                                              Text("৳${value.productDetails.data!.data.charge.profit}", style: const TextStyle(fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -70,
                                  child: ClipPath(
                                    clipper: _Hexagon(),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 100,  //<- change height width
                                      width: 100,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            AppColors.buttonColorUp,
                                            AppColors.buttonColorDown,
                                          ],
                                        ), //borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text("এটি", style: TextStyle(color: AppColors.whiteColor),),
                                          Text(" কিনুন", style: TextStyle(color: AppColors.whiteColor),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("বিস্তারিত", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                                  Text("জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ", style: TextStyle(color: AppColors.blackColor400),),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

class _Hexagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.25, 0);
    path.lineTo(size.width * 0.75, 0);
    path.lineTo(size.width, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.75, size.height * sqrt(3) / 2);
    path.lineTo(size.width * 0.25, size.height * sqrt(3) / 2);
    path.lineTo(0, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.25, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}