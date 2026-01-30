import 'package:flutter/material.dart';
import 'package:nti_first_project/collection/widget/collection_row.dart';
import 'package:nti_first_project/collection/widget/tap_bar.dart';

class CollectionText extends StatelessWidget {
  const CollectionText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Darlene Robertson",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Icon(Icons.verified, color: Colors.indigo),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Each Apes NFT is a unique masterpiece"
            ", and crafted by artists around the globe",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          CollectionRow(),
          SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.black,
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.add, size: 40),
                SizedBox(width: 20),
                Text("Watchlist", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomTapBar(),
        ],
      ),
    );
  }
}
