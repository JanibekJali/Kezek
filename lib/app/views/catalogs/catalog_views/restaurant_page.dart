import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class RestaurantPage extends StatelessWidget {
const RestaurantPage({ Key? key }) : super(key: key);
@override
  Widget build(BuildContext context) {
    List restaurant = [
      [
        'Islambek',
        'Restaurant',
        'We give you good service'
      ],
      [
        'Atabek',
        'Restaurant',
        'Our customers are happy with us'
      ],
      [
        'Altyn',
        'Restaurant',
        'Our customers are happy with us'
      ],
      [
        'Ulug Ata',
        'Restaurant',
        'Our service is fast, cheap and qualified'
      ],
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Restaurants'),
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
        itemCount: restaurant.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return UserCard(
              username: restaurant[index][0],
              subtitle: restaurant[index][1],
              description: restaurant[index][2]);
        },
      ),
    );
  }
}