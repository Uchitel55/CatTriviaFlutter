import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/error_screen.dart';
import '../providers/cat_facts_api_providers.dart';

class CatFact extends ConsumerWidget {
  const CatFact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catProvider = ref.watch(catFactsApiProvider);

    return catProvider.when(
      data: (data) {
        DateTime uploaded = DateTime.parse(data.updatedAt);
        String formattedDate = DateFormat.yMMMd().format(uploaded);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: Text(
                data.text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(formattedDate,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.end),
          ],
        );
      },
      error: (_, __) => const ErrorScreen(),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
