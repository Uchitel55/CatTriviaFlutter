import 'package:dio/dio.dart';

import '../model/cat_image_api_response.dart';

class CatImageService {
  CatImageService._();
  static final instance = CatImageService._();

  final url = Uri.parse("https://cataas.com/cat?json=true");

  Future<CatImageApiResponse> getCatImage() async {
    final response = await Dio().getUri(url);
    return CatImageApiResponse.fromJson(response.data);
  }
}
