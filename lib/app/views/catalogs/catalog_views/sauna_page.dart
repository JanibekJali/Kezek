import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class SaunaPage extends StatelessWidget {
  const SaunaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List sauna = [
      ['Banya №1', 'Sauna', 'We give you good service'],
      ['Banya №4', 'Spa', 'Our customers are happy with us'],
      ['Banya №6', 'Sauna', 'Our customers are happy with us'],
      ['Banya №10', 'Sauna', 'Our service is fast, cheap and qualified'],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Saunas'),
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
        itemCount: sauna.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              username: sauna[index][0],
              subtitle: sauna[index][1],
              description: sauna[index][2]);
        },
      ),
    );
  }
}
