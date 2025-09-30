import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/notification.dart';
import 'package:facebook/pages/reels.dart';
import 'package:flutter/material.dart';

class MaincustomPage extends StatefulWidget {
  const MaincustomPage({super.key});

  @override
  State<MaincustomPage> createState() => _MaincustomPageState();
}

class _MaincustomPageState extends State<MaincustomPage> {
  int selectedIndex = 0;

  List pages = [
    Newsfeed(),
    FriendsPage(),
    ReelsPages(),
    MarketPlacePage(),
    NotificationPages(),
    MenuPage(),

  ];

  //handle index
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home ), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home ), label: "Friends"),
          BottomNavigationBarItem(
            icon: Icon(Icons.home ), label: "Reels"),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_convenience_store_rounded), 
            label: "Market"),
          BottomNavigationBarItem(
            icon: Icon(Icons.home ), label: "Notifications"),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof1.jpg"),
            ),label:"Menu",)
        ],
        
      ),
    );
  }
}