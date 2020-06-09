import 'package:flutter/material.dart';
import 'package:pubgmobilepedia/screen/home_screen.dart';
import 'package:pubgmobilepedia/screen/info_screen.dart';
import 'package:pubgmobilepedia/theme/colors/light_colors.dart';

class BottomNavBarScreen extends StatefulWidget {
  int selectedPageIndex;

  BottomNavBarScreen({this.selectedPageIndex = 0});
  static const routeName = '/ButtomNavBarScreen';
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  var pages = [
    HomeScreen(),
    InfoScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.selectedPageIndex,
        children: pages,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Colors.black),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xffffb969),
          unselectedItemColor: LightColors.kDarkBlue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),

              title: Text('Info'),
            ),
          ],
          onTap: (int index) {
            setState(() {
              widget.selectedPageIndex = index;
            });
          }, currentIndex: widget.selectedPageIndex,
        ),
      ),
    );
  }
}
