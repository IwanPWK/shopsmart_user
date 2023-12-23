import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello world",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Hello world")),
            // set Switch not theme
            SwitchListTile(
              title: Text(
                  themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
              value: themeProvider.getIsDarkTheme, // position of switch
              onChanged: (value) {
                themeProvider.setDarkTheme(themeValue: value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
