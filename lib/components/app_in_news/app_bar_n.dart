import 'package:flutter/material.dart';

class appBarN extends StatelessWidget {
  const appBarN({
    super.key,
    required this.size1,
  });

  final SizedBox size1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/im.jpg'),
            fit: BoxFit.cover,
          )),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Новости на сегодня',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              size1,
              size1,
              Text(
                'Самые свежие новости прямо тут',
                style: TextStyle(
                  
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            
              size1,
              size1
            ]),
      ),
    );
  }
}