import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

final databaseProvider = Provider<Database>((ref) => Database());

class Database {
  final urlDatabase =
      "https://cat-trivia-cbc83-default-rtdb.europe-west1.firebasedatabase.app/facts.json";

  Future<void> sendData(String text, String updatedAt) async {
    await Dio().post(
      urlDatabase,
      data: jsonEncode(
        {
          "text": text,
          "updatedAt": updatedAt,
        },
      ),
    );
  }
}
