import 'package:flutter/material.dart';
import 'package:food_app/src/pages/About_page.dart';
import 'package:food_app/src/pages/Home_Page.dart';
import 'package:food_app/src/pages/Order_page.dart';
import 'package:food_app/src/pages/Profile_page.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int currentTabIndex = 0;

  HomePage homePage;
  OrderPage orderPage;
  AboutPage aboutPage;
  ProfilePage profilePage;

  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    homePage = HomePage();
    orderPage = OrderPage();
    aboutPage = AboutPage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage, aboutPage, profilePage];

    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange[700],
          onTap: (int index) {
            setState(
              () {
                currentTabIndex = index;
                currentPage = pages[index];
              },
            );
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              // ignore: deprecated_member_use
              title: Text("Orders"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              // ignore: deprecated_member_use
              title: Text("About"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text("Profile"),
            ),
          ],
        ),
        body: currentPage,
      ),
    );
  }
}
