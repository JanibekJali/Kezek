import 'package:flutter/material.dart';
import 'package:kazek/app/views/widgets/avatar%20widget/avatar_widgets.dart';
import 'package:kazek/app/views/widgets/menu%20widget/menu_widget.dart';
import 'package:kazek/app/views/widgets/profile%20name/profileName.dart';


class MyProfileView extends StatefulWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  _MyProfileViewState createState() => _MyProfileViewState();
}

class _MyProfileViewState extends State<MyProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            CircleAvatarWidgets(),
            SizedBox(
              height: 15,
            ),
            ProfileName(),
            MenuWidget(),
          ],
        ),
      ),
    );
  }
}
