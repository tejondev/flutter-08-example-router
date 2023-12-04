import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// FAVORITE PAGE ==================================================
class FavoritePage extends StatelessWidget {
  static const name = "favorite-screen";

  final String id;
  const FavoritePage({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Page')),
      body: Center(
        child: Text('Favorite Page -- $id'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/'),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

// SETTINGS PAGE ================================================
class SettingsPage extends StatelessWidget {
  static const name = "settings-screen";

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go("/"),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
