import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/cat_facts_list_api_service.dart';

final catFactsListApiProvider = FutureProvider.autoDispose((_) {
  final catFactsListApiService = CatFactsListApiService.instance;
  return catFactsListApiService.getCatFactsList();
});
