import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/providers/favourites_provider.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/filter.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/main_drawer.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedTabIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  void _selectScreen(String indentifier) async {
    if (indentifier == 'filters') {
      Navigator.pop(context);
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => const FilterScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals = ref.watch(filteredMealsProvider);

    Widget activeScreen = CategoriesScreen(
      availableMeals: availableMeals,
    );
    var activeScreenTitle = "Categories";
    if (_selectedTabIndex == 1) {
      final favouriteMeal = ref.watch(favouritesMealsProvider);
      activeScreen = MealsScreen(
        meals: favouriteMeal,
      );
      activeScreenTitle = "Your Favorites";
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(activeScreenTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _selectScreen),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedTabIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
