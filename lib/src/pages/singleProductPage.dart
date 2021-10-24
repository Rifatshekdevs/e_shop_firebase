import 'package:e_shopper/src/services/cotrollerService.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:e_shopper/src/widgets/app_clipper.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

class SingleProductPage extends StatelessWidget {
  final _ = Get.put(Controllerservice(), permanent: true);

  final Map<String, dynamic> item;
  final String id;

  SingleProductPage({
    required this.item,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('5E7089'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(EvaIcons.shoppingCart),
        onPressed: () {
          _.cartC.addToCart(item: item, id: id);
        },
      ),
      appBar: AppBar(
        backgroundColor: HexColor('5E7089'),
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: ClipPath(
                  clipper: AppClipper(
                    cornerSize: 50,
                    diagonalHeight: 200,
                    roundedBottom: false,
                  ),
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Positioned(
            //   right: 0,
            //   child: Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Image.asset(
            //       '${item['imageProduct']}',
            //       width: 300,
            //       height: 300,
            //     ),
            //   ),
            // ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 270, left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 800,
                          child: KText(
                            text: '${item['title']}',
                            fontSize: 22,
                          ),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: double.parse('${item['rating']}'),
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
                            SizedBox(
                              width: 10,
                            ),
                            KText(
                              text: '1040 reviews',
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 400,
                              child: KText(
                                text: 'DETAILS',
                                fontSize: 20,
                                fontFamily: 'Cera Bold',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            KText(
                              text:
                                  'Safe Trading Comfort Shoes on Leading B2B Platform. Quality Comfort Shoes with Competitive Price. Quality China Products. SGS Audited Suppliers. Leading B2B Portal. China’s B2B Impact Award. Highlights: Free App Available, Multiple Quotes Available.',
                              maxLines: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Container(
                      width: 400,
                      child: KText(
                        text: 'Available Color',
                        fontSize: 20,
                        fontFamily: 'Cera Bold',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: HexColor('5E7089'),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: HexColor('#0984e3'),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: HexColor('#a29bfe'),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: HexColor('#FFC312'),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: HexColor('#4b6584'),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    KText(
                      text: 'Price',
                      fontFamily: 'Cera Bold',
                      fontSize: 25,
                    ),
                    KText(
                      text: '\$${item['price']}',
                      fontSize: 22,
                      fontFamily: 'Cera Bold',
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // FloatingActionButton(
                    //   onPressed: () {
                    //     _.cartC.addToCart(item: item);
                    //   },
                    //   child: Icon(EvaIcons.shoppingCart),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
