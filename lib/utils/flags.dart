import 'package:flutter/material.dart';
import 'package:pokedex/utils/poke_colors.dart';

class Flags {
  Flags._();

  static Color color (String type){


  switch(type) { 
    case 'bug': { 
      return PokeColor.bgBug;
    } 
    case 'dark': { 
      return PokeColor.bgDark;
    } 
    case 'dragon': { 
      return PokeColor.bgDragon;
    } 
    case 'electric': { 
      return PokeColor.bgElectric;
    }
    case 'fairy': { 
      return PokeColor.fairy;
    }
    case 'fighting': { 
      return PokeColor.fighting;
    }    
    case 'fire': { 
      return PokeColor.bgFire;
    }    
    case 'flying': { 
      return PokeColor.bgFlying;
    }    
    case 'ghost': { 
      return PokeColor.bgGhost;
    }    
    case 'grass': { 
      return PokeColor.bgGrass;
    }    
    case 'ground': { 
      return PokeColor.bgGround;
    }
    case 'ice': { 
      return PokeColor.bgIce;
    }   
    case 'normal': { 
      return PokeColor.bgNormal;
    }
    case 'poison': { 
      return PokeColor.bgPoison;
    }
    case 'psychic': { 
      return PokeColor.bgPsychic;
    }
    case 'rock': { 
      return PokeColor.bgRock;
    }
    case 'steel': { 
      return PokeColor.bgSteel;
    }
    case 'water': { 
      return PokeColor.bgWater;
    }  
    default: { 
      return Colors.amber;
    }

    } 
  }
}