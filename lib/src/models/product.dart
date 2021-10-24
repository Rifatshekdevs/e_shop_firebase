import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  String id;
  String title;
  num price;
  num offer;
  num rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.offer,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
