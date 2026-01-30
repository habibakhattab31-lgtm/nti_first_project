import 'package:flutter/material.dart';
import 'package:nti_first_project/app_const/image_const.dart';
import 'package:nti_first_project/home_layout/presentation/home_layout.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Container(
            alignment:Alignment.topRight,
              padding: EdgeInsets.all(40),
              child: Text("skip",style: TextStyle(fontSize: 20),)),
          Container(
            margin: EdgeInsets.only(top: 150,left: 50),


            child: Image.asset(ImageConst.onboading1),

          ),
          Container(
            child: Image.asset(ImageConst.onboarding2),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white70
              ),
              padding: EdgeInsets.all(100),
              child: Image.asset(ImageConst.Text),
            ),
          ),
          Positioned(
            top: 450,
            left: 50,
              child: Image.asset(ImageConst.Text)),


        ],

      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.pushReplacement(context,MaterialPageRoute(
            builder: (context) => HomeLayout(),
          )
         );
        },
        icon: Icon(Icons.arrow_forward),
      ),
    );
  }
}
