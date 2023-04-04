import 'package:flutter/material.dart';
import 'provider.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text('${MyProvider.get(context).counter}', style: const TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
