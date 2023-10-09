import 'package:flutter/cupertino.dart';
import 'package:shopp/models/product.dart';

import '../data/data_products.dart';

class ProductList with ChangeNotifier {
  final List<Product> _itens = dataProducts;
 bool _showFavoriteOnly = false;
  List<Product> get itens {
    if (_showFavoriteOnly) {
      return _itens.where((prod) => prod.isFavorite).toList();
    }
    return [..._itens];
  }

void showFavoriteOnly(){
  _showFavoriteOnly = true;
  notifyListeners();
}
void showAll(){
  _showFavoriteOnly = false;
}

void addProduct(Product product) {
  _itens.add(product);
  notifyListeners();
}
}