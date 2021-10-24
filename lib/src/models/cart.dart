import 'package:json_annotation/json_annotation.dart';
part 'cart.g.dart';

@JsonSerializable()
class Cart {
  String id;
  String title;
  String thumbnail;
  num price;
  int quantity;

  Cart({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.price,
    required this.quantity,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
