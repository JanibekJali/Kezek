import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class BankPage extends StatelessWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List bank = [
      ['Bakai', 'Filial Bank', 'We give you good service'],
      ['Kyrgyzstan Bank', 'Filial Bank', 'Our customers are happy with us'],
      ['Optima Bank', 'Filial Bank', 'Our customers are happy with us'],
      ['Ayil Bank', 'Filial Bank', 'Our service is fast, cheap and qualified'],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Banks'),
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
        itemCount: bank.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              username: bank[index][0],
              subtitle: bank[index][1],
              description: bank[index][2]);
        },
      ),
    );
  }
}
