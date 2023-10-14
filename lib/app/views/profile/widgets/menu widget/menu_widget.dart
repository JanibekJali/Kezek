import 'package:flutter/material.dart';
import 'package:kazek/app/views/profile/widgets/menu%20widget/contenersMenu.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        MenuWidgets(
          icon: Icons.person,
          text: 'Контакты',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.phone,
          text: 'Звонки',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.person_add,
          text: 'Пригласить друзей',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.group,
          text: 'Создайть группу',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.bookmark,
          text: 'Избранное',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.settings,
          text: 'Настройка',
        ),
      ],
    );
  }
}
