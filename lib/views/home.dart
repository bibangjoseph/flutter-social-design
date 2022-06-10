import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Alvarado!",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const CircleAvatar(
                            radius: 45,
                            backgroundImage:
                                AssetImage('assets/images/user-2.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [],
                ),
                const SizedBox(height: 50),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      addStory(),
                      buildStory(imageUrl: 'assets/images/user-3.jpg'),
                      buildStory(imageUrl: 'assets/images/user.jpeg'),
                      buildStory(imageUrl: 'assets/images/user-2.jpg'),
                      buildStory(imageUrl: 'assets/images/user.jpeg'),
                      buildStory(imageUrl: 'assets/images/user.jpeg'),
                      buildStory(imageUrl: 'assets/images/user.jpeg'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                Column(
                  children: [
                    buildFeed(
                        imageFeed: 'assets/feeds/feed-01.jpg',
                        imageUser: 'assets/images/user-2.jpg',
                        userName: 'Joseph Donovan',
                        time: '18 min ago'),
                    buildFeed(
                        imageFeed: 'assets/feeds/feed-02.jpg',
                        imageUser: 'assets/images/user-3.jpg',
                        userName: 'Monica Julice',
                        time: '18 min ago'),
                    buildFeed(
                        imageFeed: 'assets/feeds/feed-03.png',
                        imageUser: 'assets/images/user-2.jpg',
                        userName: 'Joseph Donovan',
                        time: '18 min ago'),
                    buildFeed(
                        imageFeed: 'assets/feeds/feed-04.jpg',
                        imageUser: 'assets/images/user-3.jpg',
                        userName: 'Monica Julice',
                        time: '18 min ago'),
                    buildFeed(
                        imageFeed: 'assets/feeds/feed-05.jpg',
                        imageUser: 'assets/images/user-2.jpg',
                        userName: 'Joseph Donovan',
                        time: '18 min ago'),
                  ],
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/chat');
        },
        child: const Icon(Icons.chat_bubble),
      ),
    );
  }

  Widget buildStory({imageUrl}) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 3, color: Colors.pink.shade300)),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }

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
              child: Image.asset(imageFeed, fit: BoxFit.fill)),
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

  Widget addStory() {
    return Container(
        margin: const EdgeInsets.only(left: 10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [BoxShadow(blurRadius: 2, color: Colors.white)],
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.grey,
        ));
  }
}
