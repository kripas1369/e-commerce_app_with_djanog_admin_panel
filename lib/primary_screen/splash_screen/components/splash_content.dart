import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key,this.text,this.image}) : super(key: key);
  final String? text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text("Our App",
          style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.orange
        ),),
        Text(text!,textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image.asset(image!,
        height: 250,
        width: 350,
        ),
        Spacer(),

      ],
    );
  }
}
