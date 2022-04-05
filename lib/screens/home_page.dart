import 'package:flutter/material.dart';

import '../widgets/cat_fact.dart';
import '../widgets/cat_image.dart';
import '../widgets/custom_button.dart';
import '../widgets/main_drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  final imageUrl =
      'https://firebasestorage.googleapis.com/v0/b/flutterbricks-1926c.appspot.com/o/images%2Fwidgets%2F1634410965233%2FScreen%20Shot%202021-10-16%20at%203.01.54%20PM.png?alt=media&token=f3d427a5-be0c-4a53-934e-bb31ce393d20';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          title: const Text('Cat Trivia'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(0),
                child: CatImage(),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: CatFact(),
              ),
              CustomButton(),
            ],
          ),
        ));
  }
}
