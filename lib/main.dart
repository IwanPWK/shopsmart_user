import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'root_screen.dart';
import 'providers/theme_provider.dart';
import 'consts/theme_data.dart';
import 'package:provider/provider.dart';

import 'screens/auth/login.dart';
import 'screens/inner_screen/product_details.dart';
import 'screens/inner_screen/viewed_recently.dart';
import 'screens/inner_screen/wishlist.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
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
          theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: const LoginScreen(),
          routes: {
            ProductDetailsScreen.routName: (context) => const ProductDetailsScreen(),
            ViewedRecentlyScreen.routName: (context) => const ViewedRecentlyScreen(),
            WishlistScreen.routName: (context) => const WishlistScreen(),
          },
        );
      }),
    );
  }
}
