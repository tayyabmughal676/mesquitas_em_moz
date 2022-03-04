import 'package:flutter/material.dart';

class MainHomeProvider extends ChangeNotifier {
  BuildContext? context;

  int currentIndex = 0;

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
