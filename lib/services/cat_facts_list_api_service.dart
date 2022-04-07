import 'package:dio/dio.dart';

import '../model/cat_facts_list_api_response.dart';

class CatFactsListApiService {
  CatFactsListApiService._();
  static final instance = CatFactsListApiService._();

  final url =
      "https://cat-trivia-cbc83-default-rtdb.europe-west1.firebasedatabase.app/facts.json";

  Future<List<CatFactsListApiResponse>> getCatFactsList() async {
    final response = await Dio().get(url);
    final exctratedData = response.data ?? [];
    final List<CatFactsListApiResponse> loadedFacts = [];
    exctratedData.forEach((factId, factData) {
      loadedFacts.insert(
          0,
          CatFactsListApiResponse(
              id: factId,
              text: factData['text'],
              updatedAt: factData['updatedAt']));
    });
    return loadedFacts;
  }
}
