import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone2021/components/custom_appbar.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010101),
      appBar: CustomAppBar(
        appBar: AppBar(
          leadingWidth: 75.0,
          centerTitle: true,
          backgroundColor: const Color(0xFF010101),
          leading: TextButton(
            onPressed: () {},
            child: const Text(
              'Privacy',
              style: TextStyle(
                color: Color(0xFF3175AE),
                fontSize: 16.0,
              ),
            ),
          ),
          title: const Text(
            'Status',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        onTap: () {},
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Status',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ListTile(
                horizontalTitleGap: 12.0,
                tileColor: const Color(0xFF1C1C1E),
                leading: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://scontent.fbki2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/60335881_2140310806016670_3747567555141697536_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_ohc=Z1jKtjCCNgwAX_dmgT5&tn=wfPvW8tgETo93Trs&_nc_ht=scontent.fbki2-1.fna&oh=0165453776c5215d446d944fc6a80649&oe=61A2BD40",
                      ),
                      radius: 25.0,
                    ),
                    Positioned(
                      right: 0,
                      bottom: -2,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF319FFC),
                        radius: 8.0,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  'My Status',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Add to my status',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xFF2C2C2E),
                      child: Icon(
                        CupertinoIcons.camera_fill,
                        color: Color(0xFF319FFC),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF2C2C2E),
                      child: Icon(
                        CupertinoIcons.pen,
                        color: Color(0xFF319FFC),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 40.0),
              child: Text(
                'VIEWED UPDATES',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: ListTile(
                horizontalTitleGap: 12.0,
                tileColor: const Color(0xFF1C1C1E),
                leading: Stack(
                  children: const [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Color(0xFF616161),
                      child: CircleAvatar(
                        radius: 24.0,
                        backgroundColor: Color(0xFF010101),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://scontent.fbki2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/51442644_2107722085956424_8173265344870219776_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_ohc=GYV2YSdnTA4AX_MuRYI&_nc_ht=scontent.fbki2-1.fna&oh=081a898b6bc344b658748792df229457&oe=61A4A62E",
                          ),
                          radius: 23.0,
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text(
                  'Ting',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  '18h ago',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
