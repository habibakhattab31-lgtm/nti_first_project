import 'package:flutter/material.dart';
import 'package:nti_first_project/collection/widget/activity.dart';
import 'package:nti_first_project/collection/widget/items.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: const [
                Tab(text: "Item’s"),
                Tab(text: "Activity"),
              ],),
          SizedBox(
            height: 300,
            child: TabBarView(

                children: [
                  ItemsWidget(),
                  ActivityWidget()
                ]),
          )
        ],
      ),

    );
  }
}
