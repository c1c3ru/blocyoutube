import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/component/itens.dart';

import '../models/plista.dart';
import '../models/product.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadProducts = provider.itens;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadProducts.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadProducts[i],
        child: Itens(product: loadProducts[i],),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
