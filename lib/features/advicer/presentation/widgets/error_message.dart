import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          CupertinoIcons.clear,
          size: 40,
          color: Colors.redAccent,
        ),
        const SizedBox(height: 20),
        Text(
          message,
          style: themeData.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
