import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/widgets/catalog_widget.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Kezek',
            style: TextStyle(fontSize: 26),
          ),
        ),
        body: Column(children: [
          CatalogWidget(),
        ]),
      ),
    );
  }
}
