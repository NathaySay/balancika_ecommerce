import 'package:my_ecommerces/features/menu/models/category.dart';
import 'package:my_ecommerces/features/menu/models/menu_item.dart';

class MenuServices {
  Future<List<MenuCategory>> fetchCategories() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      MenuCategory(id: 'main', name: 'Main Course'),
      MenuCategory(id: 'snacks', name: 'Snacks'),
      MenuCategory(id: 'salad', name: 'Salad and Seafood'),
      MenuCategory(id: 'khmerfood', name: 'Khmer Food'),
      MenuCategory(id: 'food', name: 'Food'),
      MenuCategory(id: 'grilled', name: 'Grilled'),
      MenuCategory(id: 'fried', name: 'Fried'),
      MenuCategory(id: 'softdrink', name: 'Soft Drinks'),
      MenuCategory(id: 'drink', name: 'Drink'),
      MenuCategory(id: 'wine', name: 'Wine'),
      MenuCategory(id: 'shots', name: 'Shots'),
    ];
  }

  Future<List<MenuItem>> fetchMenuItems() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      MenuItem(
        id: '0001',
        name: 'Sushi Set',
        khmerName: 'ឈុតត្រីសាល់ម៉ុន',
        subtitle: 'Japanese Food',
        imageUrl:
            'https://images.unsplash.com/photo-1562802378-063ec186a863?w=800',
        priceUsd: 22.5,
        priceKhr: 90000,
        categoryId: 'main',
      ),
      MenuItem(
        id: '0002',
        name: 'Sald',
        khmerName: 'សាឡាត',
        subtitle: 'Mix Vegetables',
        imageUrl:
            'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=800',
        priceUsd: 8.00,
        priceKhr: 32000,
        categoryId: 'main',
      ),
      MenuItem(
        id: '0006',
        name: 'Plam cake',
        khmerName: 'នំត្នោតស្រស់ដុំឡឺ',
        subtitle: 'Steamed Palm Cake',
        imageUrl: 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=800',
        priceUsd: 1.00,
        priceKhr: 4000,
        categoryId: 'snacks',
      ),
      MenuItem(
        id: '0007',
        name: 'FRENCH FRIED',
        khmerName: 'ដំឡូងបារាំងបំពងស្រួយ',
        subtitle: 'Golden Crisp',
        imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=800',
        priceUsd: 3.00,
        priceKhr: 12000,
        categoryId: 'snacks',
      ),
      MenuItem(
        id: '0008',
        name: 'CRISPY SPRING ROLLS',
        khmerName: 'ណែមបំពងស្រួយ',
        subtitle: 'Vegetable & Meat',
        imageUrl: 'https://images.unsplash.com/photo-1606491956689-2ea866880c84?w=800',
        priceUsd: 2.50,
        priceKhr: 10000,
        categoryId: 'snacks',
      ),
      MenuItem(
        id: '0009',
        name: 'FRIED CHICKEN WINGS',
        khmerName: 'ស្លាបមាន់បំពងខ្ទឹមបំពង',
        subtitle: 'Garlic Crunch',
        imageUrl:
            'https://images.unsplash.com/photo-1562967914-608f82629710?w=800',
        priceUsd: 3.50,
        priceKhr: 14000,
        categoryId: 'snacks',
      ),
    ];
  }
}
