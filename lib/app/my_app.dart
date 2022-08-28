import 'package:flutter/material.dart';
import 'package:inherited_widget01/app/dark_mode_inherted.dart';
import 'package:inherited_widget01/app/home/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkTheme = false;
  void toggleDartTheme() {
    setState(() {
      darkTheme = !darkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DarkMode(
      toggle: () {
        toggleDartTheme();
      },
      isDark: darkTheme,
      child: MaterialApp(
        theme: ThemeData(
            brightness: darkTheme ? Brightness.dark : Brightness.light),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
