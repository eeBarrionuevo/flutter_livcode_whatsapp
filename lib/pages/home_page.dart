import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_whp_clone/pages/calls_page.dart';
import 'package:flutter_app_whp_clone/pages/camera_page.dart';
import 'package:flutter_app_whp_clone/pages/chat_page.dart';
import 'package:flutter_app_whp_clone/pages/status_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this , initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("WhatsApp"),
         actions: <Widget>[
           Icon(Icons.search),
           SizedBox(
             width: 10,
           ),
           Icon(Icons.more_vert),
           SizedBox(
             width: 5,
           ),
         ],
         elevation: 0.8,
         bottom: TabBar(
           controller: _tabController,
           indicatorColor: Colors.white,
           indicatorWeight: 3.5,
           tabs: <Widget>[
             Tab(
               icon: Icon(Icons.camera_alt),
             ),
             Tab(
               child: Text(
                 "CHATS",
                 style: TextStyle(
                   fontSize: 12,
                 ),
               ),
             ),
             Tab(
               child: Text(
                 "ESTADOS",
                 style: TextStyle(
                   fontSize: 12,
                 ),
               ),
             ),
             Tab(
               child: Text(
                 "LLAMADAS",
                 style: TextStyle(
                   fontSize: 12,
                 ),
               ),
             ),
           ],
         ),
       ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message, color: Colors.white,),
      ),
    );
  }
}
