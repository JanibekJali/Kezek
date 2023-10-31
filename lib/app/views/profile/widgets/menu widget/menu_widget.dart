import 'package:flutter/material.dart';
import 'package:kazek/app/views/google%20auth/firebasee_auth.dart';
import 'package:kazek/app/views/profile/widgets/menu%20widget/contenersMenu.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({Key? key}) : super(key: key);
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        MenuWidgets(
          onPreseed: () {},
          icon: Icons.person,
          text: 'Контакты',
        ),
        SizedBox(
          height: 15,
        ),
        MenuWidgets(
          onPreseed: () {},
          icon: Icons.phone,
          text: 'Звонки',
        ),
        SizedBox(
          height: 15,
        ),
        MenuWidgets(
          onPreseed: () {},
          icon: Icons.person_add,
          text: 'Пригласить друзей',
        ),
        SizedBox(
          height: 15,
        ),
        MenuWidgets(
          onPreseed: () {},
          icon: Icons.group,
          text: 'Создайть группу',
        ),
        SizedBox(
          height: 15,
        ),
        MenuWidgets(
          onPreseed: () {},
          icon: Icons.bookmark,
          text: 'Избранное',
        ),
        SizedBox(
          height: 15,
        ),
        MenuWidgets(
          onPreseed: _authService.handleSignOut,
          icon: Icons.exit_to_app,
          text: 'Log Out',
        ),
      ],
    );
  }
}
