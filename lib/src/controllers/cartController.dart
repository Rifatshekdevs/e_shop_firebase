import 'package:e_shopper/src/models/cart.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final carts = RxList<Cart>();
  void addToCart({required Map<String, dynamic> item}) {
    final cartItem = Cart(
      id: item['id'],
      title: item['title'],
      thumbnail: item['thumbnail'],
      price: item['price'],
      quantity: item['quantuty'],
    );
    carts.add(cartItem);
  }
  //  bool checkCartExist({required String id}) {
  //   final cart = carts.singleWhereOrNull(
  //     (cart) => cart.id == id,
  //   );
  //   if (cart != null) {
  //     return true;
  //   }
  //   return false;
  // }
}
