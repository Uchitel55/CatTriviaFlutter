class CatFactsApiResponse {
  String id;
  String text;
  String updatedAt;

  CatFactsApiResponse({
    required this.id,
    required this.text,
    required this.updatedAt,
  });

  factory CatFactsApiResponse.fromJson(Map<String, dynamic> data) {
    return CatFactsApiResponse(
      id: data["id"] ?? "",
      text: data["text"] ?? "",
      updatedAt: data["updatedAt"] ?? "",
    );
  }
}
