import 'package:flutter_design_playground/src/core/providers/app_providers.dart';
import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@riverpod
FutureOr<List<CategoryDomain>> category(Ref ref) async {
  final response = await ref.watch(dioProvider).get('/products/categories');
  return [for (final json in response.data!) CategoryDomain.fromJson(json)];
}