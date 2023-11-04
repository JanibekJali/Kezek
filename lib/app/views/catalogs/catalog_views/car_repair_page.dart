import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kazek/data/translations/local_keys.g.dart';

import '../widgets/user_card.dart';

class CarRepairPage extends StatelessWidget {
  const CarRepairPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(LocaleKeys.carRepair.tr()),
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
                username: 'Автосервис Bosch',
                subtitle: LocaleKeys.carRepair.tr(),
                description: LocaleKeys.weRepairAndRestaurateallCars.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Ош-Автогаз',
                subtitle: LocaleKeys.gasService.tr(),
                description: LocaleKeys.installingLPGforCars.tr(),
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'Vulkanisation',
                subtitle: LocaleKeys.tireService.tr(),
                description: LocaleKeys.ourServiceisFastCheapandQualified,
              ),
            ),
            SizedBox(
              height: 130,
              child: UserCard(
                onTap: () {},
                username: 'AutoProfessional',
                subtitle: LocaleKeys.carFixService.tr(),
                description: LocaleKeys.wearethebest.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
