import 'package:e_shopper/src/controllers/cartController.dart';
import 'package:e_shopper/src/controllers/hiveController.dart';
import 'package:e_shopper/src/controllers/productManageController.dart';
import 'package:e_shopper/src/controllers/shopController.dart';
import 'package:get/get.dart';

class Controllerservice extends GetxService {
  final hiveC = Get.put(HiveController(), permanent: true);
  final productManageC = Get.put(ProductManageConrtroller(), permanent: true);
  final shopC = Get.put(ShopController(), permanent: true);
  final cartC = Get.put(CartController(), permanent: true);
}
