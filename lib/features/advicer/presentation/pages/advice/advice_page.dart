import 'package:advicer_clean/core/provider/theme_service.dart';
import 'package:advicer_clean/features/advicer/presentation/widgets/advicer_field.dart';
import 'package:advicer_clean/features/advicer/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Advicer',
          style: themeData.textTheme.displayLarge,
        ),
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (value) =>
                  Provider.of<ThemeService>(context, listen: false)
                      .toggleTheme())
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: AdvicerField(
                fields: 'Demo advicer',
              )
                  // CircularProgressIndicator(
                  //   valueColor: AlwaysStoppedAnimation<Color>(
                  //       themeData.colorScheme.secondary),
                  // ),
                  ),
            ),
            SizedBox(height: 200, child: Center(child: CustomButton())),
          ],
        ),
      ),
    );
  }
}

// CircularProgressIndicator(
//   valueColor: AlwaysStoppedAnimation<Color>(
//       themeData.colorScheme.secondary),
// ),

// Text(
//   'Advice',
//   style: themeData.textTheme.headlineMedium,
//   textAlign: TextAlign.center,
