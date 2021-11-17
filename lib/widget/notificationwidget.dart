import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notificationwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 50,
            leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(),
          ),
          title: Text('Notifications', style: TextStyle(
            color: Colors.black
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.settings,color: Colors.black,))
            ],
          ),
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 40,
            pinned: true,
            titleSpacing: 0,
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300]!))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 8),
                     decoration: const BoxDecoration(
                       border: Border(bottom: BorderSide(color: Colors.blue, width: 3)),
                     ),
                     child: const Text('All', style: TextStyle(
                        color: Colors.black
                    )),
                   ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                     decoration: const BoxDecoration(
                       border: Border(bottom: BorderSide(color: Colors.blue, width: 3))
                     ),
                    child: const Text('Mentions', style: TextStyle(
                        color: Colors.black
                    )),
                  ),
                ],
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300]!))
              ),
              margin: const EdgeInsets.only(bottom: 7),
              padding: const EdgeInsets.only(bottom: 7),
              child: ListTile(
                leading: Icon(CupertinoIcons.heart_fill, color: Colors.red,),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'AGBOOLA FUHAD', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          TextSpan(text: '  '),
                          TextSpan(text: 'Retweeted your reply', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),
                      
                    Text('Happy birthday')
                  ],
                ),
              ),
            ),
            childCount: 10
          ),
          
          )
        ],
      ),
    );
  }
}