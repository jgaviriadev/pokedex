import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Text('Search for Pokémon by name or using the National Pokédex number.'),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: Card(
                color: Colors.green[400],
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '#001',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const Text(
                              'Bulbasaur',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              
                            )
                          ],
                        ),
                      )
                      
                    ),
                    Expanded(child: Container(color: Colors.blue,)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:16.0, right: 16),
              child: Container(
                //width: 150,
                height: 120,
                color: Colors.amber,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('pokemon_example.png'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}