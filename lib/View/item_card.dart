import 'package:flutter/material.dart';
import 'package:online_shop_app/Model/ProductListModel.dart';
import 'package:online_shop_app/Resources/colors.dart';

class ItemCard extends StatelessWidget {
  final Results product;
  final VoidCallback onPress;
  const ItemCard({Key? key, required this.product, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              GestureDetector(
                onTap: onPress,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 148,
                        width: 148,
                        child:  Image.network(
                          product.image,
                          fit: BoxFit.fill,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      const Text("Lays Classic Family Chips",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'ক্রয় ',
                              style: const TextStyle(
                                  fontSize: 10,
                                  color: AppColors.blackColor400
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '৳ ${product.charge.currentCharge}',
                                    style: const TextStyle(
                                      color: AppColors.priceTextColor,
                                        fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    )
                                ),
                              ],
                            ),
                          ),
                          const Text("৳ 20",
                            style: TextStyle(
                              color: AppColors.priceTextColor,
                                decoration: TextDecoration.lineThrough
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'বিক্রয় ',
                              style: const TextStyle(
                                  fontSize: 10,
                                  color: AppColors.blackColor400,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: '৳ ${product.charge.sellingPrice.toString()}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'লাভ ',
                              style: const TextStyle(
                                fontSize: 10,
                                color: AppColors.blackColor400,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: '৳ ${product.charge.profit.toString()}',
                                    style: const TextStyle(
                                      fontSize: 11,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.buttonColorUp,
                          AppColors.buttonColorDown,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    "+",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}