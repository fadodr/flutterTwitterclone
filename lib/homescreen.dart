import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitterclone/detailtweetscreen.dart';
import 'package:twitterclone/widget/feedwidget.dart';
import 'package:twitterclone/widget/messagewidget.dart';
import 'package:twitterclone/widget/notificationwidget.dart';
import 'package:twitterclone/widget/searchwidget.dart';

class Homescreen extends StatefulWidget{
  const  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  PageController _pageviewcontroller = PageController();
  List<Widget> _screens = [
    Feedwidget(),
    Searchwidget(),
    Notificationwidget(),
    Messagewidget(),
  ];
  void _onPageChanged(int value){
    setState(() {
      selectedIndex = value;
    });
  }

  void _onItemTapped(int selectedindex){
    _pageviewcontroller.jumpToPage(selectedindex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: selectedIndex == 3 ? Icon(Icons.inbox) : Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700],
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_alt_fill), label: '' ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail), label: '')
        ]
      ),
      body: PageView(
        controller: _pageviewcontroller,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
        children: _screens,
      )
    );
  }
}