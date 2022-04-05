import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/cat_image_api_service.dart';

final catImageApiProvider = FutureProvider.autoDispose((_) {
  final catImageApiService = CatImageService.instance;
  return catImageApiService.getCatImage();
});
