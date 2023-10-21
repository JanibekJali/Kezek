import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/widgets/catalog_widget.dart';
import 'package:kazek/app/views/search/search_bar.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        bottomNavigationBar: NavbarPage() ,
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   title: Text(
        //     'Kezek',
        //     style: TextStyle(fontSize: 26),
        //   ),
        //   actions: [SearchScreen()],
        // ),

        body: Column(children: [
          SearchScreen(),
          CatalogWidget(),
        ]),
      ),
    );
  }
}
