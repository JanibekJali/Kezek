import 'package:flutter/material.dart';

import '../catalog_views/car_repair_page.dart';
import '../catalog_views/chemists_page.dart';
import '../catalog_views/dentists_page.dart';
import '../catalog_views/hair_cut_page.dart';


class CatalogWidget extends StatelessWidget {
  const CatalogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 5,
        ),
        child: Row(
          children: [
            // catalogs
            Catalog(
              title: 'Hair Cut',
              imageName: 'assets/images/hair_cut.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HairCutPage()));
              },
            ),
            Catalog(
              title: 'Car Repair',
              imageName: 'assets/images/car_repair.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CarRepairPage()));
              },
            ),
            Catalog(
              title: 'Chemist\'s',
              imageName: 'assets/images/chemists.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChemistsPage()));
              },
            ),
            Catalog(
              title: 'Dentist',
              imageName: 'assets/images/dentist.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DentistsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

// catalog helper widget
class Catalog extends StatelessWidget {
  const Catalog({
    super.key,
    required this.title,
    required this.imageName,
    required this.onTap,
  });
  final String title;
  final String imageName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]),
          child: Column(
            children: [
              // logo image
              Image.asset(
                imageName,
                width: 115,
                height: 100,
              ),
              // title for category
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
