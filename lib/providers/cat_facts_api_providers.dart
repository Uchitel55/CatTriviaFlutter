import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/cat_facts_api_service.dart';

final catFactsApiProvider = FutureProvider.autoDispose((_) {
  final catFactsApiService = CatFactsApiService.instance;
  return catFactsApiService.getCatFact();
});
