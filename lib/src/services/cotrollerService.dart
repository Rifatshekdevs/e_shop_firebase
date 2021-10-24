import 'package:e_shopper/src/controllers/authController.dart';
import 'package:e_shopper/src/controllers/cartController.dart';
import 'package:e_shopper/src/controllers/firebaseController.dart';
import 'package:e_shopper/src/controllers/hiveController.dart';
import 'package:e_shopper/src/controllers/productManageController.dart';
import 'package:e_shopper/src/controllers/shopController.dart';
import 'package:get/get.dart';

class Controllerservice extends GetxService {
  final hiveC = Get.put(HiveController());
  final productManageC = Get.put(ProductManageConrtroller());
  final shopC = Get.put(ShopController());
  final cartC = Get.put(CartController());
  final fisebaseC = Get.put(FirebaseController());
  final authC = Get.put(AuthController());
  // final productC = Get.put(ProductController(), permanent: true);
}
