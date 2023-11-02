import 'package:flutter/material.dart';
import 'package:kazek/app/views/google%20auth/firebasee_auth.dart';
import 'package:kazek/app/views/profile/widgets/menu%20widget/contenersMenu.dart';

class MenuWidget extends StatelessWidget {
  final AuthService authService = AuthService();
  MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        MenuWidgets(
          onPressed: () {},
          icon: Icons.person,
          text: 'Контакты',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          onPressed: () {},
          icon: Icons.phone,
          text: 'Звонки',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          onPressed: () {},
          icon: Icons.person_add,
          text: 'Пригласить друзей',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          onPressed: () {},
          icon: Icons.group,
          text: 'Создайть группу',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          onPressed: () {},
          icon: Icons.settings,
          text: 'Настройка',
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          onPressed: authService.handleSignOut,
          icon: Icons.exit_to_app,
          text: 'выйти',
        ),
      ],
    );
  }
}
