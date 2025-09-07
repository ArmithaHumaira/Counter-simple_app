import 'package:flutter/material.dart';
import '../models/history.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  final List<History> _history = [];

  int get counter => _counter;
  List<History> get history => _history;

  void increment() {
    _counter++;
    _history.add(History(value: _counter, time: DateTime.now()));
    notifyListeners();
  }

  void decrement() {
    _counter--;
    _history.add(History(value: _counter, time: DateTime.now()));
    notifyListeners();
  }
}
