import 'package:flutter/material.dart';
import 'package:online_shop_app/Resources/colors.dart';

class ProductSearchPage extends StatefulWidget {
  const ProductSearchPage({Key? key}) : super(key: key);

  @override
  State<ProductSearchPage> createState() => _ProductSearchPageState();
}

class _ProductSearchPageState extends State<ProductSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          ],
        ),
      ),
    );
  }
}
