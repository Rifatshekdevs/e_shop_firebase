import 'package:e_shopper/src/hive_models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProductController extends GetxController {
  final favoriteBox = Hive.box<FavoriteProducts>('favoritesProducts');
  final productList = [
    {
      'imageProduct': 'assets/img/shoes_1.png',
      'title': 'Nike kobe 4 protro',
      'price': '1650',
      'offer': '10%',
    },
    {
      'imageProduct': 'assets/img/shoes_2.png',
      'title': 'Nike air max',
      'price': '1850',
      'offer': '20%',
    },
    {
      'imageProduct': 'assets/img/shoes_3.png',
      'title': 'guccy Brand',
      'price': '2380',
      'offer': '5%',
    },
    {
      'imageProduct': 'assets/img/shoes_4.png',
      'title': 'Apex stylies man ',
      'price': '3550',
      'offer': '5%',
    },
    {
      'imageProduct': 'assets/img/shoes_5.png',
      'title': 'Nike air max',
      'price': '3000',
      'offer': '25%',
    },
    {
      'imageProduct': 'assets/img/shoes_6.png',
      'title': 'Addidas sports shoes',
      'price': '1290',
      'offer': '5%',
    },
    {
      'imageProduct': 'assets/img/shoes_7.png',
      'title': 'Apex Fj fashion',
      'price': '2780',
      'offer': '5%',
    },
  ];
}
