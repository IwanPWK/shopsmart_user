import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../services/assets_manager.dart';
import '../widgets/app_name_widget.dart';
import '../widgets/subtitle_text_widget.dart';
import '../widgets/title_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.shoppingCart,
          ),
        ),
        title: const AppNameTextWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: TitlesTextWidget(
                label: "Please login to have unlimited access",
              ),
            ),
          ),
          Visibility(
            visible: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.background,
                          width: 3),
                      image: DecorationImage(
                        image: AssetImage(
                          AssetsManager.profilePicture,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitlesTextWidget(label: "Kurniawan Wijaya"),
                      SizedBox(
                        height: 6,
                      ),
                      SubtitleTextWidget(label: "koadhyow@gmail.com")
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: Theme.of(context).colorScheme.background,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TitlesTextWidget(
                  label: "General",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomListTile(
                  text: "All Order",
                  imagePath: AssetsManager.orderSvg,
                  function: () {},
                ),
                CustomListTile(
                  text: "Wishlist",
                  imagePath: AssetsManager.wishlistSvg,
                  function: () {},
                ),
                CustomListTile(
                  text: "Viewed recently",
                  imagePath: AssetsManager.recent,
                  function: () {},
                ),
                CustomListTile(
                  text: "Address",
                  imagePath: AssetsManager.address,
                  function: () {},
                ),
                const SizedBox(height: 6),
                Divider(
                  color: Theme.of(context).colorScheme.background,
                  thickness: 1,
                ),
                const SizedBox(height: 6),
                const TitlesTextWidget(
                  label: "Settings",
                ),
                const SizedBox(height: 10),
                SwitchListTile(
                  secondary: Image.asset(
                    AssetsManager.theme,
                    height: 34,
                  ),
                  title: Text(themeProvider.getIsDarkTheme
                      ? "Dark Mode"
                      : "Light Mode"),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themeValue: value);
                  },
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.login),
              label: const Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.function,
  });
  final String imagePath, text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      title: SubtitleTextWidget(label: text),
      leading: Image.asset(
        imagePath,
        height: 34,
      ),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}
