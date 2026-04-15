import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/recipes/presentation/recipes_tag.dart';
import 'package:flutter_design_playground/src/features/others/presentation/fun_with_flags.dart';
import 'package:flutter_design_playground/src/features/home/presentation/home_page.dart';
import 'package:flutter_design_playground/src/features/others/presentation/input_form_page.dart';
import 'package:flutter_design_playground/src/features/products/presentation/product_detail.dart';
import 'package:flutter_design_playground/src/features/products/presentation/products_categories_page.dart';
import 'package:flutter_design_playground/src/features/products/presentation/products_page.dart';
import 'package:flutter_design_playground/src/features/others/presentation/widgets/grid_flag_page.dart';

// Stateless Widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Retornar um App Google Material Design
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Playground',
      theme: ThemeData(colorSchemeSeed: Colors.red, brightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/fun-with-flags': (context) => FunWithFlagsPage(),
        '/design-grid': (context) => GridFlagPage(),
        '/input-form': (context) => InputFormPage(),
        '/products': (context) => ProductCategoryPage(),
        '/products-category': (context) => ProductsPage(),
        '/product-detail': (context) => ProductDetail(),
        '/recipes': (context) => RecipesTag(),
      },
    );
  }
}
