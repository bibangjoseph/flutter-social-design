import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 35,
                    )),
                const Icon(Icons.more_vert_outlined)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Conversation",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          Column(
            children: [
              conversationItem(
                  imageUser: 'assets/images/user-2.jpg',
                  userName: 'Joseph Donovan',
                  message: "You know you're inlove when"),
              conversationItem(
                  imageUser: 'assets/images/user-3.jpg',
                  userName: 'Monica Julice',
                  message: "Hey you! What's up!"),
              conversationItem(
                  imageUser: 'assets/images/user.jpeg',
                  userName: 'Brittany Hart',
                  message: "You know you're inlove when"),
              conversationItem(
                  imageUser: 'assets/images/user-4.jpg',
                  userName: 'Daborah Flores',
                  message: "You know you're inlove when"),
              conversationItem(
                  imageUser: 'assets/images/user-5.jpg',
                  userName: 'Harley Quinn',
                  message: "You know you're inlove when"),
              conversationItem(
                  imageUser: 'assets/images/user-5.jpg',
                  userName: 'Harley Quinn',
                  message: "You know you're inlove when"),
              conversationItem(
                  imageUser: 'assets/images/user-5.jpg',
                  userName: 'Harley Quinn',
                  message: "You know you're inlove when"),
              conversationItem(
                  imageUser: 'assets/images/user-5.jpg',
                  userName: 'Harley Quinn',
                  message: "You know you're inlove when"),
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }

  Widget conversationItem({imageUser, userName, message}) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imageUser),
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              message,
              style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
            ),
          ],
        )
      ]),
    );
  }
}
