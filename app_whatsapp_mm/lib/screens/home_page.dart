import 'package:flutter/material.dart';
import 'package:whatsmm/screens/chats_page.dart';
import 'package:whatsmm/screens/status_page.dart';
import 'calls_page.dart';
import 'camera_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("WhatsApp"),
        elevation: 0.5,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            splashRadius: 10,
            icon: const Icon(
              Icons.add_outlined,
              size: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            splashRadius: 10,
            icon: const Icon(
              Icons.more_vert,
              size: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            const Tab(
                icon: Icon(
              Icons.camera_alt,
            )),
            const Tab(text: "CONVERSAS"),
            const Tab(text: "STATUS"),
            const Tab(text: "LIGACAO"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CameraPage(),
          const ChatsPage(),
          const StatusPage(),
          const CallsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // ignore: deprecated_member_use
        backgroundColor: Colors.black87,
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
