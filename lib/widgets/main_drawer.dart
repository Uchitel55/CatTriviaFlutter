import 'package:flutter/material.dart';

import '../screens/home_page.dart';
import '../screens/saved_facts_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  buildListTile(String title, IconData icon, Function onTapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => onTapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: const Text('Cat Trivia'),
          automaticallyImplyLeading: false,
        ),
        const Divider(),
        const SizedBox(height: 20),
        buildListTile(
          'Home',
          Icons.home,
          () {
            Navigator.of(context).pushReplacementNamed(HomePage.routeName);
          },
        ),
        const Divider(),
        buildListTile(
          'Facts',
          Icons.pets,
          () {
            Navigator.of(context)
                .pushReplacementNamed(SavedFactsPage.routeName);
          },
        ),
      ],
    ));
  }
}
