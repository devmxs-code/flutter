import 'package:flutter/material.dart';
import 'package:whatsmm/data/Status.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          height: 80,
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              const SizedBox(width: 15),
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("Assets/Images/img0.jpeg"),
                    radius: 32,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          // ignore: deprecated_member_use
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "My status",
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  ),
                  const Text(
                    "Tap to add status update",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.centerLeft,
          child: const Text(
            "    Recent "
            "updates",
            style: TextStyle(color: Colors.black45),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: statusList.length,
              itemBuilder: (context, int index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  height: 80,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 32,
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(statusList[index].statusUrl),
                            radius: 28,
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            statusList[index].name,
                            style:
                                const TextStyle(fontSize: 16, letterSpacing: 1),
                          ),
                          Text(
                            statusList[index].time,
                            style: const TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
