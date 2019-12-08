import 'package:flutter/material.dart';

class Fruehbats extends StatelessWidget {
  final List<String> fruehbats;

  Fruehbats([this.fruehbats = const []]) {
    print('[Fruehbats Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Fruehbats Widget] build()');
    return Column(
      children: fruehbats
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/früh.jpg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
