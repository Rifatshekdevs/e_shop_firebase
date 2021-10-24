import 'package:e_shopper/src/services/cotrollerService.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesComponent extends StatelessWidget {
  final _ = Get.put(Controllerservice(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              KText(
                text: 'Our product',
                fontSize: 30,
                color: Colors.black54,
                fontFamily: 'Cera Bold',
              ),
              Spacer(),
              KText(
                text: 'Short by',
                fontSize: 16,
                color: Colors.grey,
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
          Container(
            height: 60,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: _.shopC.categories.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _.shopC.categories[index];
                return Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  margin: EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Image.asset('${item['imagePath']}'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      KText(
                        text: '${item['name']}',
                        fontSize: 14,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
