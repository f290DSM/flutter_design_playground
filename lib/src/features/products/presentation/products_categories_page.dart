import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductCategoryPage extends StatelessWidget {
  const ProductCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categorias de Produtos')),
      body: FutureBuilder(
        future: http.get(
          Uri.parse('https://dummyjson.com/products/categories'),
        ),
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

          final data = snapshot.data!;
          final json = jsonDecode(data.body) as List;
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
