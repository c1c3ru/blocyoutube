import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/models/product.dart';
import 'package:shopp/utils/routes.dart';

class Itens extends StatelessWidget {
  const Itens({Key? key, required Product product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {
              product.toggleFavorite();
            },
            icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            product.name,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.DETAIL,
              arguments: product,
            );
          },
        ),
      ),
    );
  }
}
