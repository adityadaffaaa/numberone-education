import 'package:flutter/material.dart';
import 'package:flutter_education/screens/nav/history_screen.dart';
import 'package:flutter_education/screens/nav/home_screen.dart';
import 'package:flutter_education/screens/nav/profile_screen.dart';
import 'package:flutter_education/widgets/custom_appbar.dart';
import 'package:flutter_education/utils/colors.dart' as app_color;
import 'package:flutter_education/utils/typography.dart' as app_typo;
import 'package:flutter_education/utils/images.dart' as app_img;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget bottomNav() {
      return BottomNavigationBar(
          backgroundColor: app_color.white,
          currentIndex: selectedIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Icon(Icons.home,
                        color: selectedIndex == 0
                            ? app_color.secondary
                            : app_color.grey.withOpacity(0.7))),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.history,
                      color: selectedIndex == 1
                          ? app_color.secondary
                          : app_color.grey.withOpacity(0.7),
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: selectedIndex == 2
                          ? app_color.secondary
                          : app_color.grey.withOpacity(0.7),
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.book,
                      color: selectedIndex == 3
                          ? app_color.secondary
                          : app_color.grey.withOpacity(0.7),
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.menu,
                      color: selectedIndex == 4
                          ? app_color.secondary
                          : app_color.grey.withOpacity(0.7),
                    )),
                label: ''),
          ]);
    }

    return Scaffold(
      backgroundColor: app_color.white,
      appBar: customAppBar(
        context,
        selectedIndex == 2 || selectedIndex == 0 ? false : true,
      ),
      bottomNavigationBar: bottomNav(),
      body: selectedIndex == 0
          ? HomeScreen()
          : selectedIndex == 1
              ? HistoryScreen()
              : selectedIndex == 2
                  ? ProfileScreen()
                  : null,
    );
  }
}
