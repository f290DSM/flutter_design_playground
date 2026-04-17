import 'package:flutter_design_playground/src/features/products/data/repositories/categories_repository_impl.dart';
import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@riverpod
FutureOr<List<CategoryDomain>> category(Ref ref) async {
  return await ref.watch(categoryRepositoryProvider).getCategories();
}