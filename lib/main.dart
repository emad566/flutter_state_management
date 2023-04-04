import 'package:flutter/material.dart';
import 'package:flutter_state_management/provider.dart';
import 'package:provider/provider.dart';
import 'dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (_)=>MyProvider(),
        child:  CounterPro(),
      ),
    );
  }
}

class CounterPro extends StatelessWidget {
  const CounterPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: const Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          MyProvider.get(context, listen: false).increment();
        },
      ),
    );
  }
}
