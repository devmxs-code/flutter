import 'package:flutter/material.dart';
import 'package:whatsmm/data/Contacts.dart';
import 'chat_screen.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatScreen(
                  userName: contactList[index].name,
                  userDp: contactList[index].imgUrl,
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 2),
              height: 80,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 15),
                      CircleAvatar(
                        backgroundImage: AssetImage(contactList[index].imgUrl),
                        radius: 32,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contactList[index].name,
                            style:
                                const TextStyle(fontSize: 16, letterSpacing: 1),
                          ),
                          SizedBox(
                            width: 190,
                            child: Text(
                              contactList[index].message,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.black45),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30, right: 15),
                    child: Text(contactList[index].time,
                        style: const TextStyle(color: Colors.black54)),
                  )
                ],
              ),
            ),
          );
        });
  }
}
