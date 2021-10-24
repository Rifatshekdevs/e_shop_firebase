import 'package:e_shopper/src/components/categoriesComponnt.dart';
import 'package:e_shopper/src/components/productComponent.dart';
import 'package:e_shopper/src/pages/addProductPage.dart';
import 'package:e_shopper/src/pages/cartPage.dart';
import 'package:e_shopper/src/pages/favoriteProductPage.dart';
import 'package:e_shopper/src/services/cotrollerService.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final _ = Get.put(Controllerservice());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () => Get.to(() => FavoriteProductsPage()),
              leading: Icon(
                EvaIcons.heart,
                color: Colors.red,
              ),
              title: KText(text: 'Favorite products'),
            ),
            ListTile(
              onTap: () => Get.to(() => AddproductPage()),
              leading: Icon(
                EvaIcons.plus,
                color: Colors.red,
              ),
              title: KText(text: 'Add Products'),
            ),
            ListTile(
              onTap: () => _.authC.logout(),
              leading: Icon(
                EvaIcons.logInOutline,
                color: Colors.red,
              ),
              title: KText(text: 'Logout'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(
              width: 120,
            ),
            Text(
              'X',
              style: TextStyle(color: Colors.teal.withOpacity(.8)),
            ),
            Text(
              'E',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => CartPage());
            },
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CategoriesComponent(),
          ProductComponent(),
          CartPage(),
        ],
      ),
    );
  }
}
