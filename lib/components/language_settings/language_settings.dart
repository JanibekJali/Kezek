import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }
class LanguageSettings extends StatefulWidget {
const LanguageSettings({ Key? key }) : super(key: key);

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  @override
  Widget build(BuildContext context){
   
    return PopupMenuButton(
  child: Icon(Icons.translate,size: 20,),
  onSelected: (value) {
    if (value == "English") {
      // add desired output
    }else if(value == "Russian"){
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
            onTap: ()async {
              
              await context.setLocale(Locale('en'));
              setState(() {
                
              });

            
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
            child: Text('🇷🇺')
          ),
          InkWell(
            onTap: ()async {
             await context.setLocale(Locale('ru'));
               setState(() {
                
              });
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
             child: Text('🇯🇵')
          ),
          InkWell(
            onTap: () {
            
               
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