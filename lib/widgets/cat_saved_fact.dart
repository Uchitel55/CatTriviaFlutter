import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class CatSavedFact extends StatelessWidget {
  final String text;
  final String updatedAt;

  const CatSavedFact({
    Key? key,
    required this.text,
    required this.updatedAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime uploaded = DateTime.parse(updatedAt);
    String formattedDate = DateFormat.yMMMMd().format(uploaded);
    return ListTile(
      leading: const Icon(Icons.pets),
      title: Text(text),
      subtitle: Text(formattedDate),
    );
  }
}
