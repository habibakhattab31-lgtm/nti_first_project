import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:nti_first_project/details/widget/coulm_widget.dart';
import 'package:nti_first_project/details/widget/custom_price.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text("#14415",style: TextStyle(fontSize: 20,color: Colors.amber ,fontWeight: FontWeight.bold),),
                  const CoulmWidget(
                    text: "Hypebest Apes B",
                    description: "",
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text("125 Sold"),
                      SizedBox(width: 10),
                      SizedBox(width: 50,),
                      Icon(Icons.access_time_rounded),
                      SizedBox(width: 20),
                      Text("1h 23m 32s"),
                    ],
                  ),

                ],
              ),
            ),
            Icon(Icons.workspace_premium_outlined),
          ],
        ),
        SizedBox(height: 10,),
        DottedLine(
          direction: Axis.horizontal,
          dashLength: 6,
          dashGapLength: 4,
          lineThickness: 1,
          dashColor: Colors.grey,
        ),
        CoulmWidget(
            text: "Description",
            description: "Each Apes NFT is a unique masterpiece, "
                "and crafted by artists around the globe."),
        SizedBox(height: 20,),
        CustomPrice()
      ],
    );
  }
}
