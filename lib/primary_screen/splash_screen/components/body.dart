import 'package:flutter/material.dart';
import 'package:yecommerce/primary_screen/splash_screen/components/splash_content.dart';
import 'package:yecommerce/primary_screen/splash_screen/components/splash_list.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) =>
                    SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"],
                    ),
              ),),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 123),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),),
                    )
                  ],
                ),
              ),

            )
          ],
        )
    );;
  }

  AnimatedContainer buildDot({ int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      // margin: EdgeInsets.only(right: 5,left: 12),
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.orange : Colors.black12
      ),
      height: 6,
      width: currentPage == index ? 15 : 8,

    );
  }
}


