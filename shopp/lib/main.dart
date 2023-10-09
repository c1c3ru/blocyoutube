import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/models/plista.dart';
import 'package:shopp/pages/detail.dart';
import 'package:shopp/pages/product_count.dart';
import 'package:shopp/pages/products_pages.dart';
import 'package:shopp/providers/counter.dart';
import 'package:shopp/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(_) => ProductList(),
      child: MaterialApp(

        title: 'Shopping',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home: ProductSPages(),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.DETAIL: (ctx) => const DetailItem(),
        },

      ),
    );
  }
}
