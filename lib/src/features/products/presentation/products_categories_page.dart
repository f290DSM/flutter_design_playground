import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/products/presentation/providers/categories_provider.dart';
import 'package:flutter_design_playground/src/features/products/presentation/widgets/list_category_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
