import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppMode { ecommerce, menu }

class AppState extends ChangeNotifier {
  AppMode mode = AppMode.ecommerce;

  void enterEcommerce() {
    mode = AppMode.ecommerce;
    notifyListeners();
  }

  void enterMenuMode() {
    mode = AppMode.menu;
    notifyListeners();
  }
}

final appStateProvider = ChangeNotifierProvider<AppState>((ref) => AppState());
