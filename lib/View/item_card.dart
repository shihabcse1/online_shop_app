import 'package:flutter/material.dart';
import 'package:online_shop_app/Resources/colors.dart';

class ItemCard extends StatelessWidget {
  //final Product product;
  final Function press;
  const ItemCard({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
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
                        child: Image.asset("images/dummy_product.png"),
                      ),
                      const Text("Lays Classic Family Chips"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'ক্রয় ',
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '৳ 20.00',
                                    style: TextStyle(
                                      color: AppColors.priceTextColor,
                                        fontWeight: FontWeight.bold)
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
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(text: '৳ 25.00', style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'লাভ ',
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(text: '৳ 5.00', style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
      ),
    );
  }
}