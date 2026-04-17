import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';
import 'package:flutter_design_playground/src/features/products/presentation/widgets/list_category_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/app_providers.dart';

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
