import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/others/presentation/widgets/base_flag_widget.dart';

class JapanWidget extends StatelessWidget {
  const JapanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseFlagWidget(
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
    );
  }
}
