import 'package:e_shopper/src/hive_models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProductManageConrtroller extends GetxController {
  final favoriteBox = Hive.box<FavoriteProducts>('favoritesProducts');
  manageFavorite({required Map<String, dynamic> product}) async {
    if (favoriteBox.containsKey(product['id'])) {
      favoriteBox.delete(product['id']);
    } else {
      final data = FavoriteProducts(
        id: product['id'],
        offer: product['offer'],
        price: product['price'],
        rating: product['rating'],
        title: product['title'],
      );
      await favoriteBox.put(product['id'], data);
    }
  }
}
