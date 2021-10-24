import 'package:e_shopper/src/controllers/productManageController.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoriteProductsPage extends StatelessWidget {
  final productManageC = Get.put(ProductManageConrtroller(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: KText(text: 'Favorite products'),
        ),
        body: ValueListenableBuilder(
          builder: (BuildContext context, value, Widget? child) {
            return productManageC.favoriteBox.isEmpty
                ? Center(
                    child: KText(text: 'No Favorite products'),
                  )
                : Container(
                    padding: EdgeInsets.all(12),
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: productManageC.favoriteBox.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .6,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = productManageC.favoriteBox.getAt(index);

                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    HexColor('C4E0EE').withOpacity(.8),
                                radius: 64,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 56,
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    HexColor('C4E0EE').withOpacity(.8),
                                radius: 54,
                              ),
                              Positioned(
                                top: 12,
                                left: 12,
                                child: Container(
                                  width: 42,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: HexColor('C4E0EE').withOpacity(.8),
                                  ),
                                  child: Center(
                                    child: KText(
                                      text: '${item!.offer}%',
                                      color: Colors.black54,
                                      fontFamily: 'Cera Bold',
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12,
                                right: 12,
                                child: GestureDetector(
                                  onTap: () => productManageC.favoriteBox
                                      .delete(item.id),
                                  child: ValueListenableBuilder(
                                    builder: (BuildContext context, value,
                                        Widget? child) {
                                      return Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red.withOpacity(.8)),
                                        child: Center(
                                          child: Icon(
                                            EvaIcons.heart,
                                            size: 14,
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
                                bottom: 10,
                                child: Column(
                                  children: [
                                    KText(
                                      text: '${item.title}',
                                      fontSize: 17,
                                    ),
                                    // SizedBox(
                                    //   height: 12,
                                    // ),
                                    KText(
                                      text: '\$${item.price}',
                                      fontSize: 17,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 12,
                                          initialRating:
                                              double.parse('${item.rating}'),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          unratedColor: HexColor('F0E8C9'),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: HexColor('FDD446'),
                                          ),
                                          tapOnlyMode: true,
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
          },
          valueListenable: productManageC.favoriteBox.listenable(),
        ));
  }
}
