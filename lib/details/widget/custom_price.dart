import 'package:flutter/material.dart';
import 'package:nti_first_project/details/widget/coulm_widget.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CoulmWidget(
                text: "Price",
                description: "2.23 ETH"),
          ],
        ),
        Spacer(),
        InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(18),
            margin:   EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              children: [
                Icon(Icons.gavel,color: Colors.white,),
                SizedBox(width: 10,),
                Text("Place Bid",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),)
              ],
            ),
          )
        )
      ],
    );
  }
}
