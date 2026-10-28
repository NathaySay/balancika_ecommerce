import 'package:flutter/cupertino.dart';
import 'package:my_ecommerces/features/menu/models/category.dart';
import 'package:my_ecommerces/features/menu/models/menu_item.dart';
import 'package:my_ecommerces/features/menu/services/menu_services.dart';

class MenuProvider extends ChangeNotifier {
  final MenuServices _services;

  MenuProvider({MenuServices? services})
    : _services = services ?? MenuServices() {
    Load();
  }

  List<MenuCategory> categories = [];
  List<MenuItem> menuItems = [];
  String selectedCategoryId = 'main';
  bool isLoading = true;

  Future<void> Load() async {
    isLoading = true;
    notifyListeners();

    categories = await _services.fetchCategories();
    menuItems = await _services.fetchMenuItems();

    isLoading = false;
    notifyListeners();
  }

  void selectCategory(String categoryId) {
    selectedCategoryId = categoryId;
    notifyListeners();
  }

  List<MapEntry<MenuCategory, List<MenuItem>>> get groupedItems {
    return categories
        .map(
          (c) => MapEntry(
            c,
            menuItems.where((i) => i.categoryId == c.id).toList(),
          ),
        )
        .where((e) => e.value.isNotEmpty)
        .toList();
  }
}
