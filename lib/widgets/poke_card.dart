import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/models.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({
    Key? key, required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final List<Type>  types = pokemon.types;
    final Color color = Flags.color(types[0].type.name);
    return SizedBox(//color: Colors.green,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 140,
            width: double.infinity,
            child: Card(
              color: color,
              shadowColor: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    //'#${types[0].type.name}',
                                    '#${pokemon.id}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: PokeColor.textNumber,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap:   true,
                                  itemCount: types.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right:5),
                                      child: PokeBadges.pokeBadges(types[index].type.name),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 40,
                          top: 8,
                          child: Image.asset(
                            'assets/images/pattern.png',
                            height: 45,
                          )
                        )
                      ],
                      
                    )
                    
                  ),
                  Expanded(
                    child: 
                      Image.asset(
                        'assets/images/full_pokeball.png',
                        //height: 180,
                        fit: BoxFit.cover,
                        color: Colors.white.withOpacity(0.15),
                      )
                  ),
                ],
              ),
            ),
          ),
          Container(//color: Colors.green,
          alignment: Alignment.topRight,
            child: CachedNetworkImage(
              width: 150,
              height: 150,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl: pokemon.sprites.other!.officialArtwork.frontDefault,
              fit: BoxFit.contain,
              )
            ),
        ],
      ),
    );
  }
}