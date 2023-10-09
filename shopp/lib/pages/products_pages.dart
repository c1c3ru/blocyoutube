import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/models/plista.dart';
import 'package:shopp/pages/grid.dart';


enum FilterOptions{
  favorite,
  all
}

class ProductSPages extends StatelessWidget {
  const ProductSPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorite,
                child: Text('Favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Todos'),
              )
            ],
            onSelected: (FilterOptions selectedValues) {
              if (selectedValues == FilterOptions.favorite) {
                provider.showFavoriteOnly();
              }else{
                provider.showAll();
              }
            },
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Grid(),
      ),
    );
  }
}
