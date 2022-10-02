import 'package:flutter/material.dart';
import 'package:online_shop_app/View/product_search_page.dart';
import 'package:online_shop_app/ViewModel/cart_provider.dart';
import 'package:online_shop_app/ViewModel/product_search_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CartProvider()),
          ChangeNotifierProvider(create: (_) => ProductViewViewModel()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProductSearchPage(),
      ),
    );
  }
}



