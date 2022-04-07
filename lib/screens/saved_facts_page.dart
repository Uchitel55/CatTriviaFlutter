import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/main_drawer.dart';
import '../widgets/error_screen.dart';
import '../widgets/cat_saved_fact.dart';
import '../providers/cat_facts_list_api_providers.dart';

class SavedFactsPage extends ConsumerWidget {
  static const routeName = '/saved-facts';

  const SavedFactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catFactsDbPrvider = ref.watch(catFactsListApiProvider);

    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text('Cat Trivia'),
      ),
      body: catFactsDbPrvider.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        CatSavedFact(
                          text: data[i].text,
                          updatedAt: data[i].updatedAt,
                        ),
                        const Divider(),
                      ],
                    ));
          },
          error: (_, __) => const ErrorScreen(),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
