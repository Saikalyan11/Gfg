import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Theme_provider extends ChangeNotifier {
  bool isteme = false;
  ThemeMode get thememode {
    if (isteme == false) {
      return ThemeMode.light;
    } else if (isteme == true) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  changeTheme(bool themev) {
    isteme = themev;
    notifyListeners();
  }
}
