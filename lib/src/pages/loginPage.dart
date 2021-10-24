import 'package:e_shopper/src/config/appTheme.dart';
import 'package:e_shopper/src/pages/registerPage.dart';
import 'package:e_shopper/src/widgets/Ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#ecf0f1'),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
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
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: KText(
                      text: 'Login',
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Cera Bold',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            registerHare(),
          ],
        ),
      ),
    );
  }
}

Widget registerHare() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            height: 2,
            width: 120,
            color: AppTheme.fillColor,
          ),
          Spacer(),
          KText(
            text: 'OR',
            fontFamily: 'Cera Bold',
          ),
          Spacer(),
          Container(
            height: 2,
            width: 120,
            color: AppTheme.fillColor,
          ),
        ],
      ),
      KText(
        text: 'Sing in with',
        fontFamily: 'Cera Bold',
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: HexColor('1299F6'),
            child: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
              size: 17,
            ),
          ),
          SizedBox(width: 15),
          CircleAvatar(
            radius: 15,
            backgroundColor: HexColor('#e74c3c'),
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
              size: 17,
            ),
          ),
        ],
      ),
      SizedBox(height: 15),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: KText(
              text: 'Create an account with your',
              color: Colors.black,
            ),
          ),
          SizedBox(width: 3),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey.withOpacity(.6),
                width: .7,
              ),
            ),
            child: GestureDetector(
              onTap: () => Get.to(() => RegisterPage()),
              child: KText(
                text: 'Email address',
                fontFamily: 'Cera Bold',
              ),
            ),
          )
        ],
      )
    ],
  );
}
