import 'package:advicer_clean/core/theme/t_app_theme.dart';
import 'package:advicer_clean/core/provider/theme_service.dart';
import 'package:advicer_clean/features/advicer/presentation/pages/advice/advice_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) {
      return ThemeService();
    },
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode:
                themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
            theme: TAppTheme.lightTheme,
            darkTheme: TAppTheme.darkTheme,
            home: AdvicePage());
      },
    );
  }
}
