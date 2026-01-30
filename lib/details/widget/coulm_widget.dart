import 'package:flutter/material.dart';

class CoulmWidget extends StatelessWidget {
  const CoulmWidget({
    super.key,
    required this.text,
    required this.description,

  });

  final String text;
  final String description;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(height: 20),
        Text(description,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,maxLines: 3,),
      ],
    );
  }
}
