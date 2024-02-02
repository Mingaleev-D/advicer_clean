import 'package:flutter/material.dart';

class AdvicerField extends StatelessWidget {
  const AdvicerField({Key? key, required this.fields}) : super(key: key);
  final String fields;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: themeData.colorScheme.secondary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Text(
            fields,
            style: themeData.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
