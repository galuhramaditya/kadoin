import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/color.dart';

class BottomNavigationBarApp extends StatelessWidget {
  BottomNavigationBarApp({Key? key, this.currentPage = ''}) : super(key: key);

  final String currentPage;

  List navigationItems = [
    {'title': 'Beranda', 'icon': Icons.home, 'page': '/home'},
    {'title': 'Favorit', 'icon': Icons.favorite, 'page': '/favorite'},
    {'title': '', 'icon': null, 'page': ''},
    {'title': 'Transaksi', 'icon': Icons.sticky_note_2, 'page': '/transaction'},
    {'title': 'Akun', 'icon': Icons.person, 'page': '/account'},
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      color: ColorApp.baseColor,
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color(0x00),
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationItems.map((value) => value['page']).toList().indexOf(currentPage),
        items: navigationItems
            .map(
              (value) => BottomNavigationBarItem(
                icon: value['icon'] != null ? Icon(value['icon']) : SizedBox(),
                label: value['title'],
              ),
            )
            .toList(),
        unselectedItemColor: ColorApp.disabledColor,
        selectedItemColor: ColorApp.primaryColor,
      ),
    );
  }
}
