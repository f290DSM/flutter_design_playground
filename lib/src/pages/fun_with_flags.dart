import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/widgets/brazil_widget.dart';
import 'package:flutter_design_playground/src/pages/widgets/france_widget.dart';
import 'package:flutter_design_playground/src/pages/widgets/germany_widget.dart';
import 'package:flutter_design_playground/src/pages/widgets/japan_widget.dart';

class FunWithFlagsPage extends StatelessWidget {
  const FunWithFlagsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fun With Flags')),
      body: ListView(
        children: [
         BrazilWidget(),
         FranceWidget(),
         GermanyWidget(),
         JapanWidget()
        ]
      ),
    );
  }
}
