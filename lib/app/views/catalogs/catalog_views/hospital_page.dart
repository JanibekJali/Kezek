import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List hospital = [
      ['Saadat Ene', 'Hospital', 'We give you good service'],
      ['Andromed', 'Hospital', 'Our customers are happy with us'],
      ['Euro Clinic', 'Hospital', 'Our customers are happy with us'],
      [
        'Kyrgyz-Russian Hospital',
        'Hospital',
        'Our service is fast, cheap and qualified'
      ],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Hospitals'),
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
        itemCount: hospital.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              username: hospital[index][0],
              subtitle: hospital[index][1],
              description: hospital[index][2]);
        },
      ),
    );
  }
}
