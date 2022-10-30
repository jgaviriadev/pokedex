import 'package:flutter/material.dart';
import 'package:pokedex/models/models.dart';
import 'package:pokedex/providers/pokedex_provider.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<PokedexProvider>(context, listen: false);
    return Stack(
      children: [
        Image.asset(
          'assets/images/pokeball.png',
          height: 300,
          width: double.infinity,
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:4, right: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pokédex',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 8,),
                        const Text(
                          'Search for Pokémon by name or using the National Pokédex number.',
                          style: TextStyle(
                            fontSize: 16,
                            color: PokeColor.textGrey
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:16.0, bottom: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'What Pokémon are you looking for?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none 
                              ),
                              filled: true,
                              fillColor: PokeColor.input
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Selector<PokedexProvider, bool>(
                    selector: (_, v) => v.isLoading,
                    shouldRebuild: (a, b) => a!= b,
                    builder: (BuildContext context, bool isLoading, Widget? __) {
                      if(isLoading){
                        return const Expanded(
                          child: SizedBox(
                            height: 100,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.amber,
                              )
                            ),
                          )
                        );
                      } else {
                        return Expanded(
                        child:  Selector<PokedexProvider, List<Pokemon>>(
                          selector: (_, v) => v.pokemons,
                          shouldRebuild: (a, b) => a.length != b.length,
                          builder: (BuildContext context, List<Pokemon> pokemons, Widget? __) {
                            if(pokemons.isEmpty){
                              print('estoy aca');
                              return Container();
                            }
                            return ListView.builder(
                              itemCount: pokemons.length,
                              itemBuilder: (BuildContext context, int index) {
                                Pokemon pokemon = pokemons[index];
                                return PokeCard(pokemon: pokemon,);
                              }
                            );
                          }
                        ),
                      );
                      }
                      
                    }
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

