import 'dart:math';

import 'package:flutter/material.dart';

class ForumCardWidget extends StatelessWidget {
  const ForumCardWidget({super.key, required this.title, required this.tag, required this.commentCount, required this.author});
  final String author;
  final String title;
  final String tag;
  final int commentCount;

  @override
  Widget build(BuildContext context) {
    final color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Chip(
                  label: Text(tag),
                  // backgroundColor: Colors.red.shade100,
                  color: WidgetStatePropertyAll(color.shade100),
                  labelStyle: TextStyle(color: color.shade600),
                  side: BorderSide.none,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(author),
                ),
                Spacer(),
                Row(children: [Icon(Icons.chat_bubble_outline), Text(commentCount.toString())]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
