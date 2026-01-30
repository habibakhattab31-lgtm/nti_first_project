import 'package:flutter/material.dart';

import '../../details/widget/coulm_widget.dart';

class CollectionRow extends StatelessWidget {
  const CollectionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          CoulmWidget(
              text: "10.0K",
              description: "Items"),
          VerticalDivider(
            color: Colors.grey,
            thickness: 2,
            width: 99,
          ),
      
          CoulmWidget(
              text: "689.10K",
              description: "Volume"),
          VerticalDivider(
            color: Colors.grey,
            thickness: 2,
            width:99,
          ),
          CoulmWidget(
              text: "13.99",
              description: "Floor Price"),
        ],
      ),
    );
  }
}

