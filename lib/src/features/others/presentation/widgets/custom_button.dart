import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final String destination;

  const CustomButton({
    super.key,
    required this.label,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: FilledButton(
        onPressed: () {
          Navigator.pushNamed(context, destination);
        },
        child: Text(label),
      ),
    );
  }
}
