
import 'package:flutter/material.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
          ]),
      bottomNavigationBar:  BottomNavigation(index: 1,),
      appBar: AppBar(
  backgroundColor: Colors.transparent,
      ), 
    ));
  }
}
