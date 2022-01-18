import 'package:flutter/material.dart';

class L10n{
  static final all=[
    Locale('en'),
    Locale('bn'),
    Locale('ar'),
    Locale('hi'),
    Locale('ko'),
  ];


  static String getFlag(String code){
    switch(code){
      case 'en':
        return '🇺🇸';
      case 'bn':
        return '🇧🇩';
      case 'ar':
        return '🇦🇪';
      case 'hi':
        return '🇮🇳';
      case 'ko':
        return '🇰🇷';
      default:
        return '🇺🇸';
    }
  }
}