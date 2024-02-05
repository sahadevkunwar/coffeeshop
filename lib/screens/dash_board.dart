import 'package:coffeeshop/core/global_variable.dart';
import 'package:coffeeshop/core/widgets/selected_line.dart';
import 'package:coffeeshop/screens/favorite_screen.dart';
import 'package:coffeeshop/screens/home/home_screen.dart';
import 'package:coffeeshop/screens/notification_screen.dart';
import 'package:coffeeshop/screens/delivery/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _page = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const OrderScreen(),
    const NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: const Color(0xff8D8D8D),
        iconSize: 24,
        onTap: (int page) {
          setState(() {
            _page = page;
          });
        },
        items: List.generate(
          pages.length,
          (index) =>
              _buildNavBarItem('assets/images/${_iconName(index)}.svg', index),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(String iconPath, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 30,
              width: 30,
              colorFilter: ColorFilter.mode(
                _page == index
                    ? GlobalVariables.selectedNavBarColor
                    : const Color(0xff8D8D8D),
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 5),
            if (_page == index) const SelectedLine(),
          ],
        ),
      ),
      label: '',
    );
  }

  String _iconName(int index) {
    switch (index) {
      case 0:
        return 'home';
      case 1:
        return 'heart';
      case 2:
        return 'bag';
      case 3:
        return 'notification';
      default:
        return '';
    }
  }
}
