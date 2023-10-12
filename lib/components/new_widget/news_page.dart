import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kazek/components/container/container.dart';
import 'package:kazek/data/models/news_model.dart';

class NewsWidgets extends StatelessWidget {
  NewsWidgets({Key? key}) : super(key: key);

  @override
  final size = SizedBox(
    width: 5,
  );
  final size1 = SizedBox(
    height: 5,
  );
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  'News',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          size1,
          size1,
          size1,
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageContainer(
                        image: AssetImage(
                              'assets/images/jcbh.jpg',
                        ),

                      ),
                      size,
                      size,
                      ImageContainer(
                        image: AssetImage(
                          'assets/images/jcbh.jpg',
                        ),
                      ),
                      size,
                      size,
                      ImageContainer(
                        image: AssetImage(
                          'assets/images/news.jpg',
                        ),
                      ),
                      size,
                      size,
                      
                      ImageContainer(
                        image: AssetImage(
                          'assets/images/oajo.jpg',
                        ),
                      ),
                      size,
                      size,
                      ImageContainer(
                        image: AssetImage('assets/images/p.jpg'),
                      ),
                      size,
                      size,
                      ImageContainer(
                        image: AssetImage('assets/images/op.jpg'),
                      ),
                      size,
                      size,
                    ]),
              ),
            ),
          ),
          size1,
          size1,
          Text(
            Article.fromJson(json as Map<String, dynamic>).author.toString(),
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}


