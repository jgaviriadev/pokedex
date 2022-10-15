import 'package:flutter/material.dart';
import 'package:pokedex/widgets/poke_icons.dart';
import 'package:pokedex/widgets/widgets.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            
          ),
        ),
      ),
    );
  }
}