import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shopper/src/config/appTheme.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AddproductPage extends StatelessWidget {
  final TextEditingController title = TextEditingController();
  final TextEditingController price = TextEditingController();
  final TextEditingController offer = TextEditingController();
  final TextEditingController rating = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: title,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.searchOutline),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: .5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                      color: AppTheme.textColor.withOpacity(.3), width: .5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: AppTheme.textColor.withOpacity(.3),
                    width: 2,
                  ),
                ),
                hintText: 'title',
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: price,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.searchOutline),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: .5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                      color: AppTheme.textColor.withOpacity(.3), width: .5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: AppTheme.textColor.withOpacity(.3),
                    width: 2,
                  ),
                ),
                hintText: 'price',
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: offer,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.searchOutline),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: .5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                      color: AppTheme.textColor.withOpacity(.3), width: .5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: AppTheme.textColor.withOpacity(.3),
                    width: 2,
                  ),
                ),
                hintText: 'offer',
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: rating,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.searchOutline),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: .5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                      color: AppTheme.textColor.withOpacity(.3), width: .5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: AppTheme.textColor.withOpacity(.3),
                    width: 2,
                  ),
                ),
                hintText: 'rating',
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      fixedSize: Size(600, 60),
                    ),
                    onPressed: () {
                      Map<String, dynamic> data = {
                        'title': title.text,
                        'price': price.text,
                        'offer': offer.text,
                        'rating': rating.text
                      };
                      FirebaseFirestore.instance
                          .collection('products')
                          .add(data);
                      Get.back();
                      Get.snackbar('Succeed', 'Product Added');
                    },
                    child: KText(
                      text: 'Add Feild',
                      color: Colors.white,
                      fontSize: 30,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
