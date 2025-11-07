import 'package:flutter/material.dart';
import 'package:whatsmm/data/Calls.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: callsList.length,
          itemBuilder: (context, int index) {
            return Container(
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
                        backgroundImage: AssetImage(callsList[index].imgUrl),
                        radius: 32,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            callsList[index].name,
                            style:
                                const TextStyle(fontSize: 16, letterSpacing: 1),
                          ),
                          Text(
                            callsList[index].time,
                            style: const TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Icon(
                          callsList[index].callPlatform
                              ? Icons.call
                              : Icons.videocam,
                          color: Theme.of(context).primaryColor))
                ],
              ),
            );
          }),
    );
  }
}
