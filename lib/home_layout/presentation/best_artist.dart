import 'package:flutter/material.dart';
import 'package:nti_first_project/app_const/image_const.dart';
import 'package:nti_first_project/collection/presenttion/collections.dart';

import '../../details/widget/coulm_widget.dart';

class BestArtist extends StatelessWidget {
  const BestArtist({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Collections() ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text("Best Artist",style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),),
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                    child:
                    Image.asset(ImageConst.artest,
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,)),
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  CoulmWidget(
                    text: 'Darlene Robertson',
                    description: '125k Followers',)
                ],
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  child: Text("Follow"))
            ],
          )
        ],
      ),
    );
  }
}
