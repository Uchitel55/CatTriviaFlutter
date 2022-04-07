class CatFactsListApiResponse {
  String id;
  String text;
  String updatedAt;

  CatFactsListApiResponse({
    required this.id,
    required this.text,
    required this.updatedAt,
  });

  factory CatFactsListApiResponse.fromJson(Map<String, dynamic> data) {
    return CatFactsListApiResponse(
      id: data["id"] ?? "",
      text: data["text"] ?? "",
      updatedAt: data["updatedAt"] ?? "",
    );
  }
}
