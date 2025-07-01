import 'package:flutter/material.dart';

class DashboardVm extends ChangeNotifier {
  int selectedIndex = 0;

  void updateMethod() {
    notifyListeners();
  }
}
