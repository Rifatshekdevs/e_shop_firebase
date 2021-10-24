// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) {
  return Cart(
    id: json['id'] as String,
    title: json['title'] as String,
    thumbnail: json['thumbnail'] as String,
    price: json['price'] as num,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
      'quantity': instance.quantity,
    };
