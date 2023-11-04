import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kazek/data/translations/local_keys.g.dart';

import '../widgets/user_card.dart';

class ChemistsPage extends StatelessWidget {
  const ChemistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title:  Text(LocaleKeys.chemists.tr()),
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
                username: 'Darmek Farm № 120',
                subtitle: LocaleKeys.drugsevice.tr(),
                description: LocaleKeys.wegiveyougoodservice.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Neman №1',
                subtitle: LocaleKeys.drugsevice.tr(),
                description: LocaleKeys.ourcustomersarehappywithus.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Farm Lend № 3',
                subtitle: LocaleKeys.drugsevice.tr(),
                description: LocaleKeys.wehaveveryqualifiedpersonal.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
