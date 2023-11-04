import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/profile/widgets/menu%20widget/contenersMenu.dart';
import 'package:kazek/data/translations/local_keys.g.dart';


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
          text: LocaleKeys.contacts.tr(),
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.phone,
          text: LocaleKeys.calls.tr(),
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.person_add,
          text: LocaleKeys.invitefriends.tr(),
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.group,
          text: LocaleKeys.createagroup.tr(),
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.bookmark,
          text: LocaleKeys.favorites.tr(),
        ),
        SizedBox(
          height: 29,
        ),
        MenuWidgets(
          icon: Icons.settings,
          text: LocaleKeys.settings.tr(),
        ),
      ],
    );
  }
}
