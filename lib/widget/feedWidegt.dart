import 'package:flutter/material.dart';

Widget buildFeed({imageFeed, imageUser, userName, time}) {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    // ignore: sort_child_properties_last
    child: Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.asset(imageFeed, fit: BoxFit.cover)),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageUser),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        time,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.more_vert_outlined,
                size: 25,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    elevation: 5,
    margin: const EdgeInsets.all(10),
  );
}
