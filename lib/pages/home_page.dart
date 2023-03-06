import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/callswidget.dart';
import 'package:whatsapp_ui/widgets/chatswidget.dart';
import 'package:whatsapp_ui/widgets/statuswidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'WhatsApp',
                  style: TextStyle(fontSize: 21),
                ),
              ),
              actions: [
                const Padding(
                  padding: EdgeInsets.only(top: 6, right: 26),
                  child: Icon(
                    Icons.camera_alt,
                    size: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 7, right: 10),
                  child: Icon(
                    Icons.search,
                    size: 24,
                  ),
                ),
                PopupMenuButton(
                  elevation: 10,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 24,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        'New Group',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        'New broadcast',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        'Linked devices',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        'Starred messages',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          body: Column(children: [
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff128C7E),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [
                  //tab 1
                  const SizedBox(
                    width: 30,
                    child: Tab(
                      icon: Icon(
                        Icons.people_alt_sharp,
                        size: 24,
                      ),
                    ),
                  ),
                  //tab 2
                  SizedBox(
                    width: 75,
                    child: Tab(
                      child: Row(children: [
                        const Text('Chats'),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            '10',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff075E55),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ]),
                    ),
                  ),
                  //tab 3
                  const SizedBox(
                    width: 80,
                    child: Tab(
                      child: Text('Status'),
                    ),
                  ),
                  //tab 4
                  const SizedBox(
                    width: 67,
                    child: Tab(
                      child: Text('Calls'),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.black,
                  ),
                  ChatsWidget(),
                  StatusWidget(),
                  CallsWidget(),
                ],
              ),
            ),
          ]),
        ));
  }
}
