import 'package:flutter/material.dart';
import 'package:shopp/models/product.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
    );
  }
}
