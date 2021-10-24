import 'package:hive/hive.dart';

part 'favoriteProducts.g.dart';

@HiveType(typeId: 1)
class FavoriteProducts {
  @HiveField(0)
  String id;

  @HiveField(1)
  int offer;

  @HiveField(2)
  String title;

  @HiveField(3)
  double price;

  @HiveField(4)
  double rating;

  FavoriteProducts(
      {required this.id,
      required this.offer,
      required this.title,
      required this.price,
      required this.rating});
}
