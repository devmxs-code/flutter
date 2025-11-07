import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone2021/chat_icons_icons.dart';
import 'package:whatsappclone2021/screens/chats.dart';
import 'package:whatsappclone2021/screens/settings.dart';
import 'package:whatsappclone2021/screens/status.dart';
import 'calls.dart';
import 'camera.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _Chats();
}

class _Chats extends State<Navigation> with SingleTickerProviderStateMixin {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 7.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Positioned(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF3C9EF6),
                        radius: 3.0,
                      ),
                      right: 0.0,
                      top: -2.0,
                    ),
                    const Icon(
                      BottomNavigationIcons.spin1,
                      size: 22,
                    )
                  ],
                ),
              ),
              label: 'Status',
            ),
            const BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Icon(
                    CupertinoIcons.phone_fill,
                    size: 26.0,
                  ),
                ),
                label: 'Calls'),
            const BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Icon(
                    CupertinoIcons.camera,
                    size: 26,
                  ),
                ),
                label: 'Camera'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        CupertinoIcons.chat_bubble_2_fill,
                        size: 26,
                      ),
                      Positioned(
                        right: -15,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3.0, vertical: 2.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 15,
                            minHeight: 15,
                          ),
                          child: const Text(
                            '200',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                label: 'Chats'),
            const BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Icon(
                    CupertinoIcons.settings,
                    size: 26,
                  ),
                ),
                label: 'Settings')
          ],
          selectedItemColor: const Color(0xFF33A0FF),
          unselectedItemColor: const Color(0xFF727272),
          unselectedFontSize: 10.0,
          selectedFontSize: 10.0,
          backgroundColor: const Color(0xFF171717),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          enableFeedback: false,
          iconSize: 20.0,
        ),
      ),
      body: Center(
        child: [
          const Status(),
          const Calls(),
          const Camera(),
          const Chats(),
          const Settings(),
        ].elementAt(_selectedIndex),
      ),
      backgroundColor: const Color(0xFF010101),
    );
  }
}
