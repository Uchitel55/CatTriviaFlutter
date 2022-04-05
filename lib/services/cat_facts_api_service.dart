import 'package:dio/dio.dart';

import '../model/cat_facts_api_response.dart';

class CatFactsApiService {
  CatFactsApiService._();
  static final instance = CatFactsApiService._();

  final url = Uri.parse(
      "https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=1");

  Future<CatFactsApiResponse> getCatFact() async {
    final response = await Dio().getUri(url);
    return CatFactsApiResponse.fromJson(response.data);
  }
}
