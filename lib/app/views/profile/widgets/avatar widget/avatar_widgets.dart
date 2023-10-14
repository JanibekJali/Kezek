import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CircleAvatarWidgets extends StatelessWidget {
  const CircleAvatarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            LineAwesomeIcons.arrow_left,
            size: 40,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          height: 140,
          width: 140,
          child: Stack(children: [
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      LineAwesomeIcons.camera,
                      color: Theme.of(context).unselectedWidgetColor,
                      size: 25,
                    )),
              ),
            ),
          ]),
        ),
        ThemeSwitcher.withTheme(
          builder: (_, switcher, theme) {
            return IconButton(
              onPressed: () => switcher.changeTheme(
                theme: theme.brightness == Brightness.light
                    ? kDarkTheme
                    : kLightTheme,
              ),
              icon: const Icon(Icons.brightness_3, size: 25),
            );
          },
        ),
      ],
    );
  }
}
          //         child: IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     LineAwesomeIcons.sun,
          //     size: 40,
          //   ),
          // ),