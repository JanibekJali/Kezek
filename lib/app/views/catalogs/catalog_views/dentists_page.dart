import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class DentistsPage extends StatelessWidget {
  const DentistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List dentist = [
      [
        'Abdullaev Muhtar Kochkorovich',
        'Technician',
        'We give you good service'
      ],
      [
        'Zakirov Yahyo Komiljonov',
        'Dentist',
        'Our customers are happy with us'
      ],
      [
        'Shukurov Alisher Masrabovich',
        'Dentist',
        'Our customers are happy with us'
      ],
      [
        'Samiev Abdulaziz Oktamovich',
        'Dentist',
        'Our service is fast, cheap and qualified'
      ],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Dentists'),
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
        itemCount: dentist.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              username: dentist[index][0],
              subtitle: dentist[index][1],
              description: dentist[index][2]);
        },
      ),
    );
  }
}
