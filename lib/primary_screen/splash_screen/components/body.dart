


import 'package:flutter/material.dart';
import 'package:yecommerce/const.dart';
import 'package:yecommerce/primary_screen/login_page/login_page_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
          SizedBox(height: 50,),
          Text("Our Ecommerce App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: kprimarycolor),),
          SizedBox(height: 5,),
          Text("It's is our first e-commerce project"),
          SizedBox(height: 45,),
          Image.asset("assets/images/1.png"),
          SizedBox(height: 170),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(9))),
            height: 40,
            minWidth: 200,
            color: kbuttoncolor,
            child: Text("Continue",style: TextStyle(color:Colors.white ),),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          )
        ],
    );
  }
}
