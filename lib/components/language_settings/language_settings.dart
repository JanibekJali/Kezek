import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class LanguageSettings extends StatelessWidget {
const LanguageSettings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final FlutterLocalization _localization = FlutterLocalization.instance;
    return PopupMenuButton(
  child: Icon(Icons.translate,size: 20,),
  onSelected: (value) {
    if (value == "English") {
      // add desired output
    }else if(value == "Russian"){
      // add desired output
    }else if(value == "Japan"){
      // add desired output
    }
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
    PopupMenuItem(
      value: "English",
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text('🇺🇸'),
          ),
          InkWell(
            onTap: () {
               _localization.translate('en', save: false);
            },
            child: const Text(
              'English',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    ),
    PopupMenuItem(
      value: "Russian",
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.settings)
          ),
          InkWell(
            onTap: () {
               _localization.translate('ru', save: false);
            },
            child: const Text(
              'Russian',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    ),
    PopupMenuItem(
      value: "Japan",
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
             child: Icon(Icons.logout)
          ),
          InkWell(
            onTap: () {
               _localization.translate('ja', save: false);
            },
            child: const Text(
              'Japan',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    ),
  ],
);
  }
}