import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/fun_with_flags.dart';
import 'package:flutter_design_playground/src/pages/widgets/custom_button.dart';
import 'package:flutter_design_playground/src/pages/widgets/grid_flag_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget createButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: FilledButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FunWithFlagsPage()),
          );
        },
        child: Text('Fun With Flags'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: .center,
        crossAxisAlignment: .stretch,
        children: [
          SizedBox(width: double.maxFinite),
          CustomButton(label: 'Fun With Flags', destination: '/fun-with-flags'),
          CustomButton(label: 'Design Grid', destination: '/design-grid'),
          CustomButton(label: 'Input Forms', destination: '/input-form'),
        ],
      ),
    );
  }
}
