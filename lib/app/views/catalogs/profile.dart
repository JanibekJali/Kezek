import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../translations/local_keys.g.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  TabController? controller;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Hair Cutter'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Container(
                height: 470,
                width: 400,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage:
                          Image.asset('assets/images/polat.jpg').image,
                      radius: 75,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: SizedBox(
                      width: 250,
                      child: Text(
                        'Boroda Barbershop',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  //
                  const Text(
                    'Men Hair Cutter',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  //
                  const Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Experience 5 years',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                  //
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[900]),
                    child: const Text(
                      'Accepts online',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 18,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.deepOrangeAccent,
                      ),
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                      onRatingUpdate: (index) {},
                    ),
                  ),
                  //
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue[900],
                        ),
                        child: Text(
                          LocaleKeys.getinline.tr().toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        )),
                  )
                ]),
              ),

              const SizedBox(
                height: 15,
              ),

              //About the service
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child:  Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        LocaleKeys.acceptsonline.tr(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 8, 46, 104)),
                      ),
                    )
                  ],
                ),
              ),
              // Service Price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Servic price:',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 8, 46, 104)),
                        ),
                        Text(
                          '0 сом',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // location
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.18,
                  width: width * 0.99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Address and Shedule',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 8, 46, 104)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: height * 0.1,
                            width: width * 0.87,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade500,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  ),
                                ]),
                            child: ListTile(
                              // location icon
                              leading: Icon(
                                CupertinoIcons.location_solid,
                                size: width * 0.08,
                                color: Colors.blue[900],
                              ),
                              // location title
                              title: const Text('Boroda Barbershop'),
                              titleTextStyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // location subtitle
                              subtitle: const Text('Курманжан-Датка 351/2 ...'),
                              subtitleTextStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // contacts
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.080,
                  width: width * 0.98,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 8, 46, 104)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // contact icon
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 8, 46, 104),
                          child: Icon(
                            CupertinoIcons.phone,
                            size: height * 0.028,
                            color: Colors.white,
                          ),
                        ),
                        // contact number
                        const Text(
                          '+996 554 995 321',
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        // message icon
                        Icon(
                          Icons.message_outlined,
                          color: Color.fromARGB(255, 8, 46, 104),
                          size: height * 0.043,
                        )
                      ],
                    ),
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
