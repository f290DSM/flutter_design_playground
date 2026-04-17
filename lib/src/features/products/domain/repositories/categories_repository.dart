import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';

abstract interface class CategoriesRepository {
  Future<List<CategoryDomain>> getCategories();
}