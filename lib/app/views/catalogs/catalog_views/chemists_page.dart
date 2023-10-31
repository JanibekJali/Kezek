import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class ChemistsPage extends StatelessWidget {
  const ChemistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pharmacy = [
      ['Darmek Farm № 120', 'Drug sevice', 'We give you good service'],
      ['Neman №1', 'Drug sevice', 'Our customers are happy with us'],
      [
        'Farm Lend № 3',
        'Drug sevice',
        'Our service is fast, cheap and qualified'
      ],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Chemists'),
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
        itemCount: pharmacy.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              username: pharmacy[index][0],
              subtitle: pharmacy[index][1],
              description: pharmacy[index][2]);
        },
      ),
    );
  }
}
