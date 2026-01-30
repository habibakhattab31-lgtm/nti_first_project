import 'package:flutter/material.dart';
import 'package:nti_first_project/details/widget/details_widget.dart';
import 'package:nti_first_project/onboarding/presentation/onboarding.dart';

import '../../app_const/image_const.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context)=>Onboarding()));
            },
            icon: Icon(Icons.keyboard_backspace_rounded )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageConst.image1,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: DetailsWidget(),

            ),

          ],
        ),
      ),
    );

  }
}
