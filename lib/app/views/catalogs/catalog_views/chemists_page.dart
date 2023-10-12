import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class ChemistsPage extends StatelessWidget {
  const ChemistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Darmek Farm № 120',
                subtitle: 'Drug sevice',
                description: 'We give you good service',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Neman №1',
                subtitle: 'Drug sevice',
                description: 'Our customers are happy with us',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Farm Lend № 3',
                subtitle: 'Drug sevice',
                description: 'We have very qualified personal',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
