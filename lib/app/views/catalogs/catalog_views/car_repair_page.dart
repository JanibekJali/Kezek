import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class CarRepairPage extends StatelessWidget {
  const CarRepairPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List carRepairmen = [
      ['Автосервис Bosch', 'Car Repair', 'We repair and restaurate all cars'],
      ['Ош-Автогаз', 'Gas service', 'Installing LPG for cars'],
      [
        'Vulkanisation',
        'Tire Service',
        'Our service is fast, cheap and qualified'
      ],
      ['Автопрофи', 'Car Fix Service', 'We are the best'],
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Car Repair'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 3 / 1),
          itemCount: carRepairmen.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return UserCard(
                username: carRepairmen[index][0],
                subtitle: carRepairmen[index][1],
                description: carRepairmen[index][2]);
          },
        ),
      ),
    );
  }
}
