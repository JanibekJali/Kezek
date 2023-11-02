import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class LanguageSettings extends StatelessWidget {
const LanguageSettings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
   
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
            onTap: ()async {
              await context.setLocale(Locale('en'));

            
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