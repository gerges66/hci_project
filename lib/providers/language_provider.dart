import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
String currentLocale = 'en';

void changeLanguage(String newLocale){
  if(currentLocale == newLocale){
    return ;
  }
  currentLocale == newLocale;
  notifyListeners();
}
}