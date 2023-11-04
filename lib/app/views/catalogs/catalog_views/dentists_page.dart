import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kazek/data/translations/local_keys.g.dart';

import '../widgets/user_card.dart';

class DentistsPage extends StatelessWidget {
  const DentistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title:  Text(LocaleKeys.dentists.tr()),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Abdullaev Muhtar Kochkorovich',
                subtitle: LocaleKeys.dentists.tr(),
                description: LocaleKeys.wegiveyougoodservice.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Shukurov Alisher Masrabovich',
                subtitle: LocaleKeys.dentalTechnician.tr(),
                description: LocaleKeys.ourcustomersarehappywithus.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Zakirov Yahyo Komiljonov',
                subtitle: LocaleKeys.dentists.tr(),
                description: LocaleKeys.wehaveveryqualifiedpersonal.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Samiev Abdulaziz Oktamovich',
                subtitle: LocaleKeys.dentists.tr(),
                description: LocaleKeys.veryfastandgoodservice.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
