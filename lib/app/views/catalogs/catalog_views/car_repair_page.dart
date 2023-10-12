import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class CarRepairPage extends StatelessWidget {
  const CarRepairPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Car Repair'),
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
                username: 'Автосервис Bosch',
                subtitle: 'Car Repair',
                description: 'We repair and restaurate all cars',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Ош-Автогаз',
                subtitle: 'Gas service',
                description: 'Installing LPG for cars',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Vulkanisation',
                subtitle: 'Tire Service',
                description: 'Our service is fast, cheap and qualified',
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Автопрофи',
                subtitle: 'Car Fix Service',
                description: 'We are the best',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
