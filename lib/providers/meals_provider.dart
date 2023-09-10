import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/meals_data.dart';

final mealsProvider = Provider(
  (ref) {
    return availableMeals;
  },
);
