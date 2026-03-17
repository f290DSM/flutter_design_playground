import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/widgets/base_flag_widget.dart';

class FranceWidget extends StatelessWidget {
  const FranceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseFlagWidget(
      flag: Row(
        children: [
          Expanded(child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.white)),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}
