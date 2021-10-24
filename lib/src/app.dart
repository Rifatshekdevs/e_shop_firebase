import 'package:e_shopper/src/config/appTheme.dart';
import 'package:e_shopper/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.apaTheme,
      home: HomePage(),
    );
  }
}
