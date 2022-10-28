import 'package:flutter/material.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          height: 133,
          width: double.infinity,
          child: Card(
            color: PokeColor.bgFire,
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
                                  '#001',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: PokeColor.textNumber,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Charmander',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              children: [
                                PokeBadges.dark(),
                                const SizedBox(width: 5,),
                                PokeBadges.fire()
                              ],
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
        const Padding(
          padding: EdgeInsets.only(bottom:20.0, right: 16),
          child: SizedBox(
            //width: 150,
            height: 140,
            //color: Colors.amber,
            child: Image(
              alignment: Alignment.bottomLeft,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/charmander.png'),
            ),
          ),
        ),
      ],
    );
  }
}