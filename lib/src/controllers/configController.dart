import 'package:e_shopper/src/controllers/hiveController.dart';
import 'package:e_shopper/src/pages/homePage.dart';
import 'package:e_shopper/src/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  final _auth = FirebaseAuth.instance;

  Future<void> initconfig() async {
    try {
      await initHive();
    } catch (e) {}
  }

  void checkUserAuth() async {
    try {

      print(_auth.currentUser);
      await Future.delayed(Duration(seconds: 2));
      _auth.currentUser != null
          ? Get.offAll(() => HomePage())
          : Get.offAll(() => LoginPage());
    } catch (e) {}
  }

  Future<void> initHive() async {
    await Get.put(HiveController(), permanent: true).initDatabase();
  }
}
