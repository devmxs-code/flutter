import 'package:flutter/material.dart';
import 'entries_screen.dart';
import 'expenses_screen.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Entradas'),
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EntriesScreen()),
                ),
          ),
          ListTile(
            title: const Text('Saídas'),
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExpensesScreen()),
                ),
          ),
          ListTile(
            title: const Text('Dashboard'),
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DashboardScreen()),
                ),
          ),
        ],
      ),
    );
  }
}
