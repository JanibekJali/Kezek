import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/profile.dart';


import '../widgets/user_card.dart';



class HairCutPage extends StatelessWidget {
  const HairCutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Hair Cutters'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                username: 'Boroda Barbershop ',
                subtitle: 'Men Hair Cutter',
                description: 'We give you good service',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Chach Tarach №1',
                subtitle: 'Men Hair Cutter',
                description: 'Our customers are happy with us',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Parikmaxer',
                subtitle: 'Men Hair Cutter',
                description: 'We have very qualified personal',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Barber shop INSPECTOR',
                subtitle: 'Men Hair Cutter',
                description: 'Very fast and good service',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
