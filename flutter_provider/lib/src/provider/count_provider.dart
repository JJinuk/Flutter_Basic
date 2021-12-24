import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0; // 외부에서 접근 못하도록 private 선언
  int get count => _count;

  add() {
    _count++;
    notifyListeners();
  }

  remove() {
    _count--;
    notifyListeners();
  }
}
