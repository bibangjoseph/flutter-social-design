import 'package:flutter/material.dart';
import 'package:socialapp/config/color.dart';
import 'package:socialapp/data/AppData.dart';
import 'package:socialapp/widget/storyWidget.dart';

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
                    child: Row(
                      children: [
                        addStory(),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppData.stories.length,
                              itemBuilder: (BuildContext context, int index) {
                                return storyWidget(
                                    imageUrl: AppData.stories[index].image);
                              }),
                        )
                      ],
                    )),
                const SizedBox(height: 40),

                Column(
                  children: [
                    // buildFeed(
                    //     imageFeed: 'assets/feeds/feed-01.jpg',
                    //     imageUser: 'assets/images/user-2.jpg',
                    //     userName: 'Joseph Donovan',
                    //     time: '18 min ago'),
                    // buildFeed(
                    //     imageFeed: 'assets/feeds/feed-02.jpg',
                    //     imageUser: 'assets/images/user-3.jpg',
                    //     userName: 'Monica Julice',
                    //     time: '18 min ago'),
                    // buildFeed(
                    //     imageFeed: 'assets/feeds/feed-03.png',
                    //     imageUser: 'assets/images/user-2.jpg',
                    //     userName: 'Joseph Donovan',
                    //     time: '18 min ago'),
                    // buildFeed(
                    //     imageFeed: 'assets/feeds/feed-04.jpg',
                    //     imageUser: 'assets/images/user-3.jpg',
                    //     userName: 'Monica Julice',
                    //     time: '18 min ago'),
                    // buildFeed(
                    //     imageFeed: 'assets/feeds/feed-05.jpg',
                    //     imageUser: 'assets/images/user-2.jpg',
                    //     userName: 'Joseph Donovan',
                    //     time: '18 min ago'),
                  ],
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorApp.pink,
        onPressed: () {
          Navigator.pushNamed(context, '/chat');
        },
        child: const Icon(Icons.chat_bubble),
      ),
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
