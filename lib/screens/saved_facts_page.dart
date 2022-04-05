import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/main_drawer.dart';

class SavedFactsPage extends ConsumerWidget {
  static const routeName = '/saved-facts';

  const SavedFactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text('Cat Trivia'),
      ),
      body: const Center(
        child: Text(
          'There will be saved facts... I hope',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
