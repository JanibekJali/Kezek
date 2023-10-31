import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:kazek/app/views/catalogs/widgets/catalog_widget.dart';
import 'package:kazek/app/views/search/search_bar.dart';
import 'package:kazek/main.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}
final FlutterLocalization _localization = FlutterLocalization.instance;
class _HomeViewState extends State<HomeView> {
  
  //  void initState() {
  //   _localization.init(
  //     mapLocales: [
  //       const MapLocale(
  //         'en',
  //         AppLocale.EN,
  //         countryCode: 'US',
  //         fontFamily: 'Font EN',
  //       ),
  //       const MapLocale(
  //         'ru',
  //         AppLocale.RU,
  //         countryCode: 'RU',
  //         fontFamily: 'Font KM',
  //       ),
  //       const MapLocale(
  //         'ja',
  //         AppLocale.JA,
  //         countryCode: 'JP',
  //         fontFamily: 'Font JA',
  //       ),
  //     ],
  //     initLanguageCode: 'ru',
  //   );
  //   _localization.onTranslatedLanguage = _onTranslatedLanguage;
  //   super.initState();
  // }

  // void _onTranslatedLanguage(Locale? locale) {
  //   setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        '',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      CatalogWidget(),
    ]);
  }
}
