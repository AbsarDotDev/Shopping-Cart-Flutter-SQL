import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingcart/allproducts.dart';
import 'package:shoppingcart/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const AllProducts());
      }),
    );
  }
}
