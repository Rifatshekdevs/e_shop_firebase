import 'package:e_shopper/src/app.dart';
import 'package:e_shopper/src/controllers/hiveController.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppconfig();
  runApp(App());
}

Future<void> initAppconfig() async {
  await Get.put(HiveController(), permanent: true).initDatabase();
}
