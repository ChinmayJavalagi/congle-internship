import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 2;
  List<Widget> widgets = [
    Text("Home"),
    Text("Likes"),
    Text("Trending"),
    Text("Calender"),
    Text("Profile"),
  ];

  void onTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/cards.png"), size: 24.0, color: Colors.black,),label: 'Home'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/heart.png"),size: 30.0), label: 'Home'),
          BottomNavigationBarItem(icon: Container(padding: EdgeInsets.all(8.0), decoration: BoxDecoration(
            color: selectedIndex == selectedIndex ? kPrimaryThemeColor.withOpacity(0.08) : Colors.transparent, borderRadius: BorderRadius.circular(30),
    ), child: ImageIcon(AssetImage("assets/icons/broadcast.png"), size: 30.0)),label: 'Home', ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/calendar.png"), size: 24.0),label: 'Home'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/user.png"),size: 24.0),label: 'Home'),
        ],
      currentIndex: selectedIndex,
      selectedItemColor: kPrimaryThemeColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    );
  }
}
