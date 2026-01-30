import 'package:flutter/material.dart';
import 'package:nti_first_project/app_const/image_const.dart';
import 'package:nti_first_project/collection/widget/collection_text.dart';
 
 class Collections extends StatefulWidget {
  const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
        Text("Collection",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(ImageConst.banner,fit: BoxFit.cover,),
                Positioned(
                  bottom: -30,
                    left: 110,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white,width: 5),
                        image: DecorationImage(
                            image:AssetImage(ImageConst.artest),fit: BoxFit.cover)
                      ),
                    ),)
              ],
            ),
            SizedBox(height: 70),
            Expanded(child: CollectionText())

          ],
        ),
      ),
    );
  }
}
