import 'package:flutter_design_playground/src/core/providers/app_providers.dart';
import 'package:flutter_design_playground/src/features/products/data/datasource/categories_datasource.dart';
import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';
import 'package:flutter_design_playground/src/features/products/domain/repositories/categories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_repository_impl.g.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesDatasource datasource;

  CategoriesRepositoryImpl({required this.datasource});

  @override
  Future<List<CategoryDomain>> getCategories() async {
    final categories = await datasource.getCategories();
    return [for (final model in categories) model.toEntity()];
  }
}

@riverpod
CategoriesRepository categoryRepository(Ref ref) {
  return CategoriesRepositoryImpl(
    datasource: CategoriesDatasourceImpl(dio: ref.watch(dioProvider)),
  );
}
