import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/widgets/base_flag_widget.dart';

class GermanyWidget extends StatelessWidget {
  const GermanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseFlagWidget(
      flag: Column(
        children: [
          Expanded(child: Container(color: Colors.black)),
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}
