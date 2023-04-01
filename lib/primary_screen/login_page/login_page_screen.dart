import 'package:flutter/material.dart';
import 'package:yecommerce/const.dart';
import 'package:yecommerce/primary_screen/login_page/components/body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle:true ,
        title: Text("Login")
      ),
      body:Body()
    );
  }
}
