import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/widgets/base_flag_widget.dart';

class FunWithFlagsPage extends StatelessWidget {
  const FunWithFlagsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fun With Flags')),
      body: Column(
        children: [
          BaseFlagWidget(
            flag: Stack(
              children: [
                Expanded(child: Container(color: Colors.white)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
