import 'dart:io';

import 'package:e_shopper/src/hive_models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveController extends GetxController {
  Future<void> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    await resigterBoxesAndAdaptar();
  }

  Future<void> resigterBoxesAndAdaptar() async {
    Hive.registerAdapter(FavoriteProductsAdapter());
    await Hive.openBox<FavoriteProducts>('favoritesProducts');
    print('Hive Initialized');
  }
}
