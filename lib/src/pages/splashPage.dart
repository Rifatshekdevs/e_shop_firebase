import 'package:e_shopper/src/controllers/configController.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(ConfigController()).checkUserAuth();
    return Scaffold(
      body: Center(
        child: KText(text: 'Ecommerce App'),
      ),
    );
  }
}
