import 'package:flutter/material.dart';
import 'package:portefeuille/pages/main/chat_page.dart';
import 'package:portefeuille/pages/main/recent_conversations.dart';
import 'package:portefeuille/pages/main/settings_page.dart';

class DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DiscoverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Découvrir'),
      actions: [
        IconButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(SettingsPage.routeName),
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(RecentConversations.routeName),
          icon: const Icon(Icons.message_rounded),
        ),
        IconButton(
          onPressed: () => Navigator.of(context).pushNamed(ChatPage.routeName),
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
