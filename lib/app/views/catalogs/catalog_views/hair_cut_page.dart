import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/profile.dart';
import '../widgets/user_card.dart';

class HairCutPage extends StatelessWidget {
  const HairCutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List hairCutters = [
      [
        'Boroda Barbershop ',
        'Men Hair Cutter',
        'We give you good service',
      ],
      [
        'Barber shop INSPECTOR',
        'Men Hair Cutter',
        'Very fast and good service',
      ],
      [
        'Chach Tarach №1',
        'Men Hair Cutter',
        'Our customers are happy with us',
      ],
      [
        'Parikmaxer',
        'Men Hair Cutter',
        'We have very qualified personal',
      ]
    ];

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 3 / 1),
        itemCount: hairCutters.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile())),
              username: hairCutters[index][0],
              subtitle: hairCutters[index][1],
              description: hairCutters[index][2]);
        },
      ),
    );
  }
}
