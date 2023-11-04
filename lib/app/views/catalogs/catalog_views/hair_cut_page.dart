import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/profile.dart';
import 'package:kazek/data/translations/local_keys.g.dart';


import '../widgets/user_card.dart';



class HairCutPage extends StatelessWidget {
  const HairCutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title:  Text(LocaleKeys.hairCutters.tr()),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                username: 'Boroda Barbershop ',
                subtitle: LocaleKeys.menHairCutter.tr(),
                description: LocaleKeys.wegiveyougoodservice.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Chach Tarach №1',
                subtitle: LocaleKeys.menHairCutter.tr(),
                description: LocaleKeys.ourcustomersarehappywithus,
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Parikmaxer',
                subtitle: LocaleKeys.menHairCutter.tr(),
                description: LocaleKeys.wehaveveryqualifiedpersonal.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Barber shop INSPECTOR',
                subtitle: LocaleKeys.menHairCutter.tr(),
                description: LocaleKeys.veryfastandgoodservice.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
