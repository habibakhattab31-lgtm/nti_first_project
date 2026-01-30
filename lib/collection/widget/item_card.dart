import 'package:flutter/material.dart';

import '../../app_const/image_const.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
   ItemCard({super.key});

  List<Map<String, String>> getItemData = [
    {
      'image': ImageConst.image1,
      'title': '#14415',
      'price': 'Hypebest Apes B',
    },
    {
      'image': ImageConst.image2,
      'title': '#14415',
      'price': 'Hypebest Apes D',
    },
    {
      'image': ImageConst.image3,
      'title': '#14415',
      'price': 'Hypebest Apes E',
    },
    {
      'image': ImageConst.green,
      'title': '#14415',
      'price': 'Hypebest Apes F',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,  ),
        itemCount: getItemData.length,
      itemBuilder: (context, index) {
        final item = getItemData[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  item['image']!,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 8,
                right: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 3,
                            color: Colors.black,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      item['price']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 3,
                            color: Colors.black,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}