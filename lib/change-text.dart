import 'package:flutter/material.dart';

class ChangeText extends StatelessWidget {
  final VoidCallback changeTextHandler;

  ChangeText({required this.changeTextHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: this.changeTextHandler,
        style: ButtonStyle(),
        child: Text('Change Text'),
      ),
    );
  }
}
