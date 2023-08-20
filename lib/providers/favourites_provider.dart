import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/meals.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealsNotifier() : super([]);

  bool toggleMealsFavouriteStatus(Meal meal) {
    final mealIsFavourite = state.contains(meal);

    if (mealIsFavourite) {
      state = state.where((m) => meal.id != m.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favouritesMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>(
        (ref) => FavouriteMealsNotifier());
