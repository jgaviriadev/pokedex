import 'package:flutter/material.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';

class PokeBadges {
  PokeBadges._();

  static Widget bug() {
    return ElevatedButton.icon(
      onPressed: null,
      icon: PokeIcons.bug(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.bug, 
        disabledForegroundColor: Colors.white,
      ),
      label: const Text('Bug'), // <-- Text
    );
  }

  static Widget dark() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Dark'),
      icon: PokeIcons.dark(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.dark, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget dragon() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Dragon'),
      icon: PokeIcons.dragon(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.dragon, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget electric() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Electric'),
      icon: PokeIcons.electric(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.electric, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget fairy() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Fairy'),
      icon: PokeIcons.fairy(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.fairy, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget fighting() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Fighting'),
      icon: PokeIcons.fighting(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.fighting, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget fire() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Fire'),
      icon: PokeIcons.fire(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.fire, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget flying() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Flying'),
      icon: PokeIcons.flying(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.flying, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }
  
  static Widget ghost() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Ghost'),
      icon: PokeIcons.ghost(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.ghost, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget grass() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Grass'),
      icon: PokeIcons.grass(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.grass, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget ground() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Ground'),
      icon: PokeIcons.ground(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.ground, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget ice() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Ice'),
      icon: PokeIcons.ice(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.ice, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget normal() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Normal'),
      icon: PokeIcons.normal(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.normal, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget poison() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Poison'),
      icon: PokeIcons.poison(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.poison, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget psychic() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Psychic'),
      icon: PokeIcons.psychic(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.psychic, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget rock() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Rock'),
      icon: PokeIcons.rock(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.rock, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget steel() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Steel'),
      icon: PokeIcons.steel(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.steel, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }

  static Widget water() {
    return ElevatedButton.icon(
      onPressed: null,
      label: const Text('Water'),
      icon: PokeIcons.water(),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: PokeColor.water, 
        disabledForegroundColor: Colors.white,
      ),
    );
  }
}