import 'package:flutter/material.dart';
import 'package:yecommerce/const.dart';
import 'package:yecommerce/routes.dart';

import 'primary_screen/splash_screen/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: kprimarycolor,),
        primarySwatch: Colors.blue,
      ),
     // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

