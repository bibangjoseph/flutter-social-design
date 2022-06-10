import 'package:flutter/material.dart';
import '../config/color.dart';

Widget storyWidget({imageUrl}) {
  return Container(
    margin: const EdgeInsets.only(left: 10),
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 3, color: ColorApp.pink)),
    child: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(imageUrl),
    ),
  );
}
