import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/widgets/base_flag_widget.dart';

class GridFlagPage extends StatelessWidget {
  const GridFlagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid Flag')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5 / 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: 16,
        itemBuilder: (BuildContext context, int index) {
          return BaseFlagWidget(
            flag: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.primaries[Random().nextInt(17 + 1)],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.primaries[Random().nextInt(17 + 1)],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.primaries[Random().nextInt(17 + 1)],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
