import 'package:e_shopper/src/config/appTheme.dart';
import 'package:e_shopper/src/services/cotrollerService.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _ = Get.put(Controllerservice());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#ecf0f1'),
        body: ListView(physics: BouncingScrollPhysics(), children: [
          SizedBox(
            height: 140,
          ),
          FlutterLogo(
            size: 90,
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              onChanged: _.authC.name,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.personOutline),
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
                hintText: 'Name',
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              onChanged: _.authC.email,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.emailOutline),
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
                hintText: 'Email',
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              obscureText: true,
              onChanged: _.authC.password,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                prefixIcon: Icon(EvaIcons.lockOutline),
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
                hintText: 'Password',
                errorMaxLines: 1,
                filled: true,
                hintStyle: TextStyle(
                  color: HexColor('#535A6A'),
                  height: 1.4,
                ),
                border: InputBorder.none,
                fillColor: AppTheme.fillColor,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  _.authC.register();
                },
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: KText(
                    text: 'Register',
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Cera Bold',
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
