import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone2021/components/custom_appbar.dart';
import 'package:whatsappclone2021/models/call_model.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  int _sliding = 0;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010101),
      appBar: CustomAppBar(
        appBar: AppBar(
          centerTitle: true,
          title: PreferredSize(
            preferredSize: const Size(double.infinity, 48),
            child: Row(
              children: [
                const SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFF17161B),
                    ),
                    child: CupertinoSlidingSegmentedControl(
                      padding: const EdgeInsets.all(0),
                      groupValue: _sliding,
                      backgroundColor: const Color(0xFF17161B),
                      thumbColor: const Color(0xFF4B4A4F),
                      onValueChanged: (value) {
                        setState(() {
                          _sliding = value as int;
                        });
                      },
                      // ignore: prefer_const_literals_to_create_immutables
                      children: {
                        0: const Text(
                          'All',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        1: const Text(
                          'Missed',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                )
              ],
            ),
          ),
          backgroundColor: const Color(0xFF010101),
          elevation: 0.0,
          leading: const Center(
            child: Text(
              'Edit',
              style: TextStyle(
                color: Color(0xFF3175AE),
                fontSize: 16.0,
              ),
            ),
          ),
          actions: [
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  CupertinoIcons.phone_badge_plus,
                  color: Color(0xFF3175AE),
                  size: 22.0,
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          controller.animateTo(0,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn);
        },
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Calls',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: CupertinoSearchTextField(
                backgroundColor: Color(0xFF1D1D1F),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 60.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(dummyCallsData[index].avatarUrl),
                      radius: 18.0,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          dummyCallsData[index].time,
                          style: const TextStyle(
                            color: Color(0xFF7C7B84),
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.info_outline,
                          color: Color(0xFF3175AE),
                          size: 20.0,
                        )
                      ],
                    ),
                    title: Text(
                      dummyCallsData[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.phone_fill,
                          color: Color(0xFF7C7B84),
                          size: 12.0,
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          dummyCallsData[index].status,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF7C7B84),
                          ),
                        )
                      ],
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15.0),
                    horizontalTitleGap: 8.0,
                    dense: true,
                    visualDensity: VisualDensity.compact,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 63.0, right: 5),
                    child: Divider(
                      height: 4.0,
                      color: Color(0xFF7C7B84),
                    ),
                  ),
                ],
              );
            }, childCount: dummyCallsData.length),
          )
        ],
      ),
    );
  }
}
