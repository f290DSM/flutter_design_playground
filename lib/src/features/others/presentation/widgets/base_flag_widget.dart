import 'package:flutter/material.dart';

class BaseFlagWidget extends StatelessWidget {
  const BaseFlagWidget({super.key, required this.flag});

  final Widget flag;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: flag,
      ),
    );
  }
}
