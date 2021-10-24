import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shopper/src/pages/homePage.dart';
import 'package:e_shopper/src/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  // for login
  // for registation

  final name = ''.obs;
  final email = ''.obs;
  final password = ''.obs;

  login() {
    try {} catch (e) {}
  }

  register() async {
    try {
      final res = await _auth.createUserWithEmailAndPassword(
          email: email.value, password: password.value);
      if (res.additionalUserInfo!.profile != null) {
        success();
      }
    } catch (e) {
      print(e);
    }
  }

  logout() async {
    try {
      await _auth.signOut();

      Get.offAll(() => LoginPage());
    } catch (e) {
      print(e);
    }
  }

  success() async {
    await _firestore.collection('users').add({
      'name': name.value,
      'email': email.value,
    });

    Get.offAll(
      () => HomePage(),
    );
  }
}
