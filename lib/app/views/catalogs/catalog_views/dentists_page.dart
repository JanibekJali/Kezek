import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class DentistsPage extends StatelessWidget {
  const DentistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Abdullaev Muhtar Kochkorovich',
                subtitle: 'Dentist',
                description: 'We give you good service',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Shukurov Alisher Masrabovich',
                subtitle: 'Dental Technician',
                description: 'Our customers are happy with us',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Zakirov Yahyo Komiljonov',
                subtitle: 'Dentist',
                description: 'We have very qualified personal',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Samiev Abdulaziz Oktamovich',
                subtitle: 'Dentist',
                description: 'Very fast and good service',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
