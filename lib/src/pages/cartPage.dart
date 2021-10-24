import 'package:e_shopper/src/services/cotrollerService.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  final _ = Get.put(Controllerservice(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => _.cartC.carts.isEmpty
            ? Center(
                child: KText(text: 'No carts'),
              )
            : ListView(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: _.cartC.carts.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = _.cartC.carts[index];
                      return Container(
                        height: 80,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(25)),
                        child: ListTile(
                          title: KText(
                            text: item.title,
                            fontFamily: 'Cera Bold',
                            fontSize: 15,
                          ),
                          subtitle: KText(
                            text: '\$${item.price}',
                            fontFamily: 'Cera Bold',
                            fontSize: 24,
                          ),
                          leading: CircleAvatar(),
                          trailing: IconButton(
                            onPressed: () {
                              _.cartC.deleteCarts(id: item.id);
                            },
                            icon: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
