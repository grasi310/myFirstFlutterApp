import 'package:flutter/material.dart';
import 'package:myapp/fruehwirths.dart';

import './fruehwirths.dart';

class FruehbatsManager extends StatefulWidget {
  final String startingFruehbat;

  FruehbatsManager({this.startingFruehbat = 'Frühlauch'}) {
    print('[FruehbatsManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[FruehbatsManager Widget] createState()');
    return _FruehbatsManagerState();
  }
}

class _FruehbatsManagerState extends State<FruehbatsManager> {
  List<String> _fruehbats = [];

  @override
  void initState() {
    print('[FruehbatsManager State] initState');
    _fruehbats.add(widget.startingFruehbat);
    super.initState();
  }

  @override
  void didUpdateWidget(FruehbatsManager oldWidget) {
    print('[FruehbatsManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[FruehbatsManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _fruehbats.add('Frühwirthi');
              });
            },
            child: Text('Add Frühwirths'),
          ),
        ),
        Fruehbats(_fruehbats)
      ],
    );
  }
}
