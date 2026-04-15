import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/app_providers.dart';

part 'products_categories_page.g.dart';

class ProductCategoryPage extends ConsumerWidget {
  const ProductCategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Categorias de Produtos')),
      body: categories.when(
        data: (data) => ListProductCategoryWidget(categories:data),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) =>
            Center(child: Text('Erro ao carregar categorias')),
      ),
    );
  }
}

@riverpod
FutureOr<List<CategoryDomain>> category(Ref ref) async {
  final response = await ref.watch(dioProvider).get('/products/categories');
  return [for (final json in response.data!) CategoryDomain.fromJson(json)];
}

class ListProductCategoryWidget extends StatelessWidget {
  const ListProductCategoryWidget({super.key, required this.categories});

  final List<CategoryDomain> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16 / 9,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final product = categories[index];
        final color = Colors.primaries[index % Colors.primaries.length];
        final categoria = product.name;
        final slug = product.slug;
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/products-category', arguments: slug);
          },
          child: Card(
            color: color.shade100,
            child: Center(
              child: Text(
                categoria,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: color.shade800),
              ),
            ),
          ),
        );
      },
    );
  }
}
