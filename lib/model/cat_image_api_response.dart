class CatImageApiResponse {
  String imageUrl;

  CatImageApiResponse({required this.imageUrl});

  factory CatImageApiResponse.fromJson(Map<String, dynamic> data) {
    return CatImageApiResponse(imageUrl: data["url"] ?? "");
  }
}
