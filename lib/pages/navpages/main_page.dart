import 'package:flutter/material.dart';
import 'package:travel_app/pages/navpages/bar_item_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/navpages/my_page.dart';
import 'package:travel_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
   MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),

  ];
  int currentIndex = 0;
  void onTap(int index){
    print(index.toString());
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps),title: Text("Home"),),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),title: Text("Bar"),),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("Search"),),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("My"),),
        ],
      ),
    );
  }
}
