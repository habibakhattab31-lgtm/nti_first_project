import 'package:flutter/material.dart';
import 'package:nti_first_project/collection/widget/item_card.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2),
        itemBuilder: (context,index){
          return ItemCard();
        });
  }
}
