import 'package:e_shopper/src/app.dart';
import 'package:e_shopper/src/controllers/configController.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('Initialized firebase');
  await Get.put(ConfigController()).initconfig();
  runApp(App());
}
