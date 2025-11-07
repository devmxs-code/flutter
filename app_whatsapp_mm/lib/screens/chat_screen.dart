import 'package:flutter/material.dart';
import 'package:whatsmm/widgets/message_composer.dart';

// ignore: must_be_immutable
class ChatScreen extends StatefulWidget {
  String userName;
  String userDp;

  ChatScreen({Key? key, required this.userName, required this.userDp})
      : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Row(
              children: [
                const Icon(Icons.arrow_back),
                CircleAvatar(
                  backgroundImage: AssetImage(widget.userDp),
                  radius: 15,
                ),
              ],
            ),
          ),
          title: Row(
            children: [
              Text(
                widget.userName,
                style: const TextStyle(fontSize: 17),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.videocam,
                size: 30,
              ),
              onPressed: () {},
              splashRadius: 25,
            ),
            IconButton(
              icon: const Icon(
                Icons.call,
                size: 23,
              ),
              onPressed: () {},
              splashRadius: 25,
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                size: 23,
              ),
              onPressed: () {},
              splashRadius: 25,
            )
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.black,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: const AssetImage("Assets/Images/bc.png"),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                MessageComposer(),
              ],
            ),
          ),
        ));
  }
}
