import 'package:flutter/material.dart';
import 'package:whats/callscreen.dart';
import 'package:whats/chatscreen.dart';
import 'package:whats/status.dart';

void main() {
  runApp((MaterialApp(
    initialRoute: ChatScreen.id,
    routes: {
      ChatScreen.id: (context) => const ChatScreen(),
      StatusScreen.id: (context) => const StatusScreen(),
      CallScreen.id: (context) => const CallScreen(),
    },
    debugShowCheckedModeBanner: false,
  )));
}
