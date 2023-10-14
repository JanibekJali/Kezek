import 'package:flutter/material.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/news/news.dart';
import 'package:kazek/app/views/profile/MyProfileView.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _selectedInhdex = 0;
  final _screens = [
    HomeView(),
    NewsPage(),
    HomeView(),
    MyProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: _screens[_selectedInhdex],
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).canvasColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedInhdex,
          onTap: (index) {
            setState(() {
              _selectedInhdex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Serch'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded), label: 'Articles'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: 'Lessons'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
