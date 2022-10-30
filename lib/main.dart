import 'package:flutter/material.dart';
import 'package:pokedex/widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'providers/pokedex_provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> PokedexProvider(), lazy: false,),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          fontFamily: 'SFPRO',
          scaffoldBackgroundColor: Colors.white
        ),
        home: const Scaffold(
          body: HomeScreen()
        ),
      ),
    );
  }
}