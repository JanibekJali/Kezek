import 'package:flutter/material.dart';
import 'package:kazek/app/views/profile/widgets/avatar%20widget/avatar_widgets.dart';
import 'package:kazek/app/views/profile/widgets/menu%20widget/menu_widget.dart';
import 'package:kazek/app/views/profile/widgets/profile%20name/profileName.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(2),
              ),
              CircleAvatarWidgets(),
              Padding(
                padding: EdgeInsets.all(2),
              ),
              ProfileName(),
              MenuWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
