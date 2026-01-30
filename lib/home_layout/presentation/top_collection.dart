import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:nti_first_project/app_const/image_const.dart';
import 'package:nti_first_project/details/widget/custom_price.dart';
import 'package:nti_first_project/home_layout/presentation/best_artist.dart';

class TopCollection extends StatelessWidget {
  const TopCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          const Text(
            "Top Collection 🔥",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              ImageConst.green,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hypebest Apes B",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "End in",
                    style: TextStyle(fontSize: 16),textAlign: TextAlign.end,
                  ),

                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.access_time_rounded, size: 18),
                      SizedBox(width: 6),
                      Text(
                        "1h 23m 32s",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DottedLine(
            direction: Axis.horizontal,
            lineThickness: 1.0,
            dashLength: 6.0,
            dashColor: Colors.grey,
            dashGapLength: 4.0,
          ),

          const SizedBox(height: 16),

          const CustomPrice(),
          BestArtist(),
        ],
      ),
    );
  }
}
