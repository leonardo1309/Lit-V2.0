import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_2/Screens/addPage.dart';
import 'package:lit_2/Screens/configPage.dart';
import 'package:lit_2/Screens/controlPage.dart';
import 'package:lit_2/Screens/homePage.dart';
import 'package:lit_2/bloc/bottomNavItem/navItem_bloc.dart';
import 'package:lit_2/models/NavItem.dart';
import '../models/AppConstants.dart';

class MainDashboard extends StatefulWidget{
  static const String routeName = '/mainDashboardRoute';

  const MainDashboard({super.key});
  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {

  int navIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ControlPage(),
    AddPage(),
    ConfigPage()
  ];

  void _onItemTapped(int index) {
    final item = NavItem(index: index);
    setState(() {navIndex = item.index;});
    BlocProvider.of<NavItemBloc>(context, listen: false)
        .add(SelectNavItemEvent(item));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[navIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        backgroundColor: AppConstants.appSecondaryColor,
        enableFeedback: false,
        child: BlocBuilder<NavItemBloc, NavItemState>(
          builder: (_, state) {
            NavItem? navItem = state.navItem;
            navItem != null ? navIndex = navItem.index : navIndex = 2;

            return Icon(AppConstants.navIcons[navIndex]);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.black,
        inactiveColor: Colors.white,
        activeColor: AppConstants.appSecondaryColor,
        icons: AppConstants.navIcons,
        activeIndex: navIndex,
        splashColor: Colors.green,
        splashSpeedInMilliseconds: 300,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: _onItemTapped,
        //other params
      ),
      backgroundColor: AppConstants.appColor,
    );
  }
}

