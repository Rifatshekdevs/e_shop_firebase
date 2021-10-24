import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseController extends GetxController {
  final _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getProducts() {
    return _firestore.collection('products').snapshots();
  }

  void delectProducts({required String id}) async {
    Get.defaultDialog(
      middleText: 'Are you sure want delete',
      confirm: TextButton(
        onPressed: () async {
          await _firestore.collection('products').doc(id).delete();
          Get.back();
          Get.snackbar(
            'Succeed',
            'Product deleted',
            backgroundColor: Colors.white,
          );
        },
        child: KText(
          text: 'Confirm',
        ),
      ),
    );
  }

  void addProducts() async {
    await _firestore.collection('products').add({
      'title': 'Snakers shoes',
      'price': 1550.0,
      'rating': 4.5,
      'offer': 10,
      'thumbnail':
          'https://firebasestorage.googleapis.com/v0/b/ecommerce-app-27df5.appspot.com/o/shoes_2.png?alt=media&token=bcd903c0-2bb0-4cc8-80a3-ef32cba693ff'
    });
    Get.back();
    Get.snackbar('Succeed', 'Product Added');
  }

  void updateProducts({required String id}) async {
    Get.defaultDialog(
      middleText: 'Are you sure want updated',
      confirm: TextButton(
        onPressed: () async {
          await _firestore.collection('products').doc(id).update({
            'title': 'ZERO TITLE',
            'price': '0.0',
            'offer': '0',
            'rating': '0.0',
          });
          Get.back();
          Get.snackbar(
            'Succeed',
            'Product updated',
            backgroundColor: Colors.white,
          );
        },
        child: KText(
          text: 'Confirm',
        ),
      ),
    );
  }
}
