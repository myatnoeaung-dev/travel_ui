import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:core_module/core_module/app_themes.dart';
import 'package:travel_ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel App UI',
        theme: AppTheme(lightDynamic).lightTheme(targetColor: Colors.amber),
        darkTheme: AppTheme(darkDynamic).darkTheme(targetColor: Colors.amber),

        themeMode: ThemeMode.light,
        home:const HomeScreen()
      );
    });
  }
}
