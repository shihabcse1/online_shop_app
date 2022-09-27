import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import '../Resources/colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        foregroundColor: AppColors.blackColor400,
        elevation: 0,
        title: const Text("প্রোডাক্ট ডিটেইল"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
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
                child: Image.asset("images/dummy_photo_details.png"),
              ),
            ),
            const Text("প্রিঞ্জেলস অনিওন চিপস ৪২ গ্রাম",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: const [
                Text("ব্রান্ডঃ প্রিঞ্জেলস"),
                Text("ডিস্ট্রিবিউটরঃ মোঃ মোবারাক হোসেন"),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("ক্রয়মূল্যঃ",
                                style: TextStyle(
                                  color: AppColors.priceTextColor,
                                  fontWeight: FontWeight.bold
                                )
                            ),
                            Text("৳ 220",
                                style: TextStyle(
                                    color: AppColors.priceTextColor,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("বিক্রয়মূল্যঃ"),
                            Text("৳ 220"),
                          ],
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [

                            Text("লাভঃ"),
                            Text("৳ 30"),
                          ],
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
                        ),
                        //borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const Text("এটিকিনুন"),
              ],
            ),
            const Text("বিস্তারিত"),
            const Text("জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ"),
          ],
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