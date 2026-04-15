import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/products/domain/entities/product_domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/app_providers.dart';
part 'products_categories_page.g.dart';

class ProductCategoryPage extends ConsumerWidget {
  const ProductCategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Categorias de Produtos')),
      body: FutureBuilder(
        future: ref.watch(dioProvider).get('/products/categories'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar categorias'));
          }

          if (!snapshot.hasData) {
            return Center(child: Text('Nenhuma categoria encontrada'));
          }

          final json = snapshot.data!.data!;
          // final json = jsonDecode(data.data);
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 16 / 9,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
            itemCount: json.length,
            itemBuilder: (context, index) {
              final color = Colors.primaries[index % Colors.primaries.length];
              final categoria = json[index]['name'];
              final slug = json[index]['slug'];
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
        },
      ),
    );
  }
}


@riverpod
FutureOr<List<ProductDomain>> productsCategories(Ref ref) async {
  final response = await ref.watch(dioProvider).get('/products/categories');
  return [for (final categoria in response.data!) ProductDomain.fromJson(categoria)];
}
