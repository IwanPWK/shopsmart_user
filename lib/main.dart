import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'root_screen.dart';
import 'providers/theme_provider.dart';
import 'consts/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        })
      ],
      // set theme
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'ShopSmart User',
          theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme),
          home: const RootScreen(),
        );
      }),
    );
  }
}
