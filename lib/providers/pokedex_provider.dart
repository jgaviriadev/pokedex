import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemon.dart';

class PokedexProvider extends ChangeNotifier{

  final String _baseUrl = 'https://pokeapi.co/api/v2/pokemon/';
  final List<Pokemon>  pokemons = [];
  bool _isLoading = true;

  PokedexProvider (){
    getListPokemons();
  }

  bool get isLoading => _isLoading;
  
  Future <String> getJsonData(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      return response.body;
    } else {
      return "Error";
    }
  }

  getListPokemons() async {
    ///added 10 pokemons to the list
    for (int i =0; i<100; i++){

      final String jsonData = await getJsonData('$_baseUrl${i+1}');
      
      pokemons.add(Pokemon.fromJson(jsonData));
      notifyListeners();
    }
    ///when all the pokemons are added to the list the loading screen is disabled
    _isLoading = false;
    notifyListeners();
  }
}