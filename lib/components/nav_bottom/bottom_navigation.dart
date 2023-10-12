import 'package:flutter/material.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/news/news.dart';


class BottomNavigation extends StatelessWidget {
const BottomNavigation({ Key? key, required this.index }) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context){
    return  BottomNavigationBar(
       currentIndex: index ,

        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),

      items: [
    BottomNavigationBarItem(icon: IconButton(
      icon: Icon(Icons.search,color: Colors.black,) ,
       onPressed: () { 
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeView(),));
        },
    ),label: 'search'
    ),
    BottomNavigationBarItem(icon: IconButton(
      icon: Icon(Icons.newspaper,color: Colors.black,) ,
       onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  NewsPage(),));
        },
    ),label: 'news'
    ),
    BottomNavigationBarItem(icon: IconButton(
      icon: Icon(Icons.book,color: Colors.black,) ,
       onPressed: () { 
        //  Navigator.push(context, MaterialPageRoute(builder: (context) =>  lessons(),));
        },
    ),label: 'lessons'
    ),
    BottomNavigationBarItem(icon: IconButton(
      icon: Icon(Icons.person,color: Colors.black,) ,
       onPressed: () { 
        //  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Profile(),));
        },
    ),label: 'profile'
    ),
  

      ],);
  }
}
