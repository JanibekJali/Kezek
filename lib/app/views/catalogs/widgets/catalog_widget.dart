import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/catalog_views/bank_page.dart';
import 'package:kazek/app/views/catalogs/catalog_views/hospital_page.dart';
import 'package:kazek/app/views/catalogs/catalog_views/restaurant_page.dart';
import 'package:kazek/app/views/catalogs/catalog_views/sauna_page.dart';

import '../catalog_views/car_repair_page.dart';
import '../catalog_views/chemists_page.dart';
import '../catalog_views/dentists_page.dart';
import '../catalog_views/hair_cut_page.dart';

class CatalogWidget extends StatelessWidget {
  CatalogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List catalogsData = [
      [
        'Hair Cut',
        'assets/images/hair_cut.png',
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HairCutPage()));
        }
      ],
      [
        'Car Repair',
        'assets/images/car_repair.png',
        () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CarRepairPage()));
        }
      ],
      [
        'Pharmacy',
        'assets/images/chemists.png',
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChemistsPage()));
        }
      ],
      [
        'Dentist',
        'assets/images/dentist.png',
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DentistsPage()));
        }
      ],
      [
        'Hospital',
        'assets/images/hospital.png',
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HospitalPage()));
        }
      ],
      [
        'Restaurant',
        'assets/images/restaurant.png',
        () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RestaurantPage()));
        }
      ],
      [
        'Bank',
        'assets/images/bank.png',
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BankPage()));
        }
      ],
      [
        'Sauna',
        'assets/images/sauna.png',
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SaunaPage()));
        }
      ],
    ];
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: catalogsData.length,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3 / 2.25),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Catalog(
            title: catalogsData[index][0],
            imageName: catalogsData[index][1],
            onTap: catalogsData[index][2],
          );
        });
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: height * 0.14,
          width: width * 0.43,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo image
              Image.asset(
                imageName,
                width: width * 0.7,
                height: height * 0.085,
                // width: width * 0.17,
                // height: height * 0.09,
              ),
              // title for category
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: const TextStyle(
                    fontSize: 14,
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
