import 'package:flutter/material.dart';
import 'package:my_ecommerces/features/ecommerce/screens/ecommerce_home_screen.dart';
import 'package:provider/provider.dart';

import '../providers/menu_provider.dart';
import '../widgets/category_chips.dart';
import '../widgets/menu_card.dart';
import '../widgets/section_title.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const _red = Color(0xFFD71920);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MenuProvider(),
      child: const _MenuView(),
    );
  }
}

class _MenuView extends StatelessWidget {
  const _MenuView();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MenuProvider>();

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Menu', style: TextStyle(fontSize: 22)),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_filled),
            tooltip: 'Show Menu',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EcommerceHomeScreen()),
              );
            },
          ),
        ],
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                const Divider(height: 1),
                const SizedBox(height: 12),
                CategoryChips(
                  categories: provider.categories,
                  selectedId: provider.selectedCategoryId,
                  onSelected: provider.selectCategory,
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                    children: [
                      for (final entry in provider.groupedItems) ...[
                        const SizedBox(height: 12),
                        SectionTitle(title: entry.key.name),
                        const SizedBox(height: 16),
                        _buildGrid(entry.value),
                      ],
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildGrid(List items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        return MenuCard(
          item: items[index],
          onAdd: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Added ${items[index].name}')),
            );
          },
        );
      },
    );
  }
}
