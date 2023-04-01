import 'package:flutter/material.dart';
import 'package:yecommerce/const.dart';
import 'package:yecommerce/primary_screen/login_page/login_page_screen.dart';
import 'package:yecommerce/primary_screen/splash_screen/components/body.dart';


class SplashScreen extends StatelessWidget {
  static String routeName ="/splash";

  // static var routeName;
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: Body()
    );
  }
}
