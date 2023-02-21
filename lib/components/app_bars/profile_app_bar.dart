import 'package:flutter/material.dart';
import 'package:portefeuille/pages/main/settings_page.dart';
import 'package:portefeuille/utils/constants.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Constants.appName.toUpperCase()),
      actions: [
        IconButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(SettingsPage.routeName),
          icon: const Icon(Icons.settings),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
