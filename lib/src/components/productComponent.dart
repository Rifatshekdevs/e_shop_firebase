import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shopper/src/controllers/productManageController.dart';
import 'package:e_shopper/src/pages/singleProductPage.dart';
import 'package:e_shopper/src/services/cotrollerService.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductComponent extends StatelessWidget {
  final productManageC = Get.put(ProductManageConrtroller(), permanent: true);
  final _ = Get.put(Controllerservice(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: _.fisebaseC.getProducts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return GridView.builder(
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: .6,
              ),
              itemCount: snapshot.data!.size,
              itemBuilder: (BuildContext context, int index) {
                final item = snapshot.data!.docs[index].data();
                final id = snapshot.data!.docs[index].id;

                return GestureDetector(
                  onTap: () => Get.to(() => SingleProductPage(
                        item: item,
                        id: id,
                      )),
                  onLongPress: () {
                    _.fisebaseC.delectProducts(id: id);
                  },
                  onDoubleTap: () {
                    _.fisebaseC.updateProducts(id: id);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        CachedNetworkImage(
                          imageUrl: '${item['thumbnail']}%',
                          width: 150,
                        ),
                        Positioned(
                          top: 12,
                          left: 10,
                          child: Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(
                                color: HexColor('#ea8685').withOpacity(.8),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: KText(
                                text: '${item['offer']}%',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 8,
                          child: GestureDetector(
                            onTap: () =>
                                productManageC.manageFavorite(product: item),
                            child: ValueListenableBuilder(
                              builder: (BuildContext context, dynamic value,
                                  Widget? child) {
                                return Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: productManageC.favoriteBox
                                              .containsKey(item['id'])
                                          ? Colors.red.withOpacity(.8)
                                          : Colors.grey.withOpacity(.8),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Icon(
                                      productManageC.favoriteBox
                                              .containsKey(item['id'])
                                          ? EvaIcons.heart
                                          : EvaIcons.heartOutline,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              },
                              valueListenable:
                                  productManageC.favoriteBox.listenable(),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          child: Column(
                            children: [
                              KText(
                                text: '${item['title']}',
                                fontSize: 16,
                              ),
                              KText(
                                text: '${item['price']}',
                                fontSize: 16,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 20,
                                    initialRating:
                                        double.parse('${item['rating']}'),
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
