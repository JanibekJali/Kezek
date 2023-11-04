import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/widgets/catalog_widget.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/search/searching_result.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> items = [
    'Eminem',
    'Boris',
    'Chiky',
    'Jons',
    'Gulmira',
    'Levinson',
    'Miyagi',
    'Or',
    'Pavel',
    'Pear',
    'Pineapple',
    'Strawberry',
    'Watermelon',
  ];

  List<String> filteredItems = [];
  TextEditingController controller = TextEditingController();

  void filterItems(String query) {
    filteredItems.clear();
    if (query.isNotEmpty) {
      items.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredItems.add(item);
        }
      });
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 55, 93),
        title: Text('Search App'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 370,
              height: 46,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(right: 10, left: 8),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                      size: 23,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      onChanged: (query) {
                        filterItems(query);
                        setState(() {});
                      },
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 3),
                    child: IconButton(
                      onPressed: () {
                        controller.clear();
                        FocusScope.of(context).unfocus();
                      },
                      icon: const Icon(
                        Icons.cancel_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: controller.text.isEmpty
          ? HomeView()
          : SearchingResultPage(filteredItems: filteredItems),
    );
  }
}
