import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/error_screen.dart';
import '../providers/cat_image_api_providers.dart';

class CatImage extends ConsumerWidget {
  const CatImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catImage = ref.watch(catImageApiProvider);
    return catImage.when(
      data: (data) {
        return SizedBox(
          height: 300,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            child: Image.network(
              'https://cataas.com${data.imageUrl}',
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      error: (_, __) => const ErrorScreen(),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
