import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database.dart';
import '../providers/cat_image_api_providers.dart';
import '../providers/cat_facts_api_providers.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var info = ref.watch(catFactsApiProvider);
    return DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).primaryColor,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              side: MaterialStateProperty.all(
                const BorderSide(
                  width: 0.3,
                  color: Colors.white,
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.only(
                    right: 75, left: 75, top: 12.5, bottom: 12.5),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          onPressed: () {
            ref.refresh(catFactsApiProvider);
            ref.refresh(catImageApiProvider);
            ref
                .read(databaseProvider)
                .sendData(info.value!.text, info.value!.updatedAt);
          },
          child: const Text('Another fact!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              )),
        ));
  }
}
