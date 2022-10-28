import 'package:flutter/material.dart';
import 'package:pokedex/providers/pokedex_provider.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PokedexProvider>(context, listen: false);
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
                  // ElevatedButton(
                  //   onPressed: () {
                  //     provider.getListPokemons();
                  //   },//context.read<PokedexProvider>().getListPokemons(), 
                  //   child: Text('BTN'),
                  // ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return const PokeCard();
                      }
                    ),
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

