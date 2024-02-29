import 'package:flutter/material.dart';
import 'package:tespro/themes/dark_mode.dart';
import 'package:tespro/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData  = LightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == DarkMode;

  set themeData(ThemeData themeData){
    _themeData = themeData;

    notifyListeners();
  }

  void toggleThem(){
    if (_themeData == LightMode){
      themeData = DarkMode;
    } else{
      themeData = LightMode;
    }
  }

}