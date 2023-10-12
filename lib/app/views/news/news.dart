import 'package:flutter/material.dart';
import 'package:kazek/components/app_in_news/app_bar_n.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';
import 'package:kazek/components/new_widget/news_page.dart';

class NewsPage extends StatelessWidget {
  NewsPage({Key? key}) : super(key: key);

  @override
  final size = SizedBox(
    width: 5,
  );
  final size1 = SizedBox(
    height: 5,
  );
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigation(
        index: 0,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
         children: [
        appBarN(
          size1: size1),
        NewsWidgets()
      ]),
    );
  }
}


