import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemon.dart';

class PokedexProvider extends ChangeNotifier{

  final String _baseUrl = 'https://pokeapi.co/api/v2/pokemon/ditto';
  final List<Pokemon>  pokemons = [];


  Future <String> getJsonData(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      return response.body;
    } else {
      return "Error";
    }
  }

  getListPokemons() async {
    print(pokemons);

      final String jsonData = await getJsonData(_baseUrl);
      pokemons.add(Pokemon.fromJson(jsonData));

    Pokemon pokemon = pokemons[0];
    print(pokemon.name);

  }
}