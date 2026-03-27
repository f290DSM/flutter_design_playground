import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/fun_with_flags.dart';
import 'package:flutter_design_playground/src/pages/home_page.dart';
import 'package:flutter_design_playground/src/pages/input_form_page.dart';
import 'package:flutter_design_playground/src/pages/widgets/grid_flag_page.dart';

// Stateless Widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Retornar um App Google Material Design
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Playground',
      theme: ThemeData(colorSchemeSeed: Colors.red, brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/fun-with-flags': (context) => FunWithFlagsPage(),
        '/design-grid': (context) => GridFlagPage(),
        '/input-form': (context) => InputFormPage(),
      },
    );
  }
}
