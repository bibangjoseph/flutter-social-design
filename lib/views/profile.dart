import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.grey,
                          size: 35,
                        )),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.more_vert_outlined, size: 25))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0))),
                child: Column(children: [
                  Row(
                    children: const [
                      Text(
                        "My Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(width: 2, color: Colors.pink)),
                        child: const CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/images/user-2.jpg'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const Text(
                        "Joseph Donovan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Guildhall School of Music & Drama",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade400),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "London, Uk",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Photos",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 18),
                          ),
                          const Text(
                            "456",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 18),
                          ),
                          const Text(
                            "602",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Follows",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 18),
                          ),
                          const Text(
                            "290",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
