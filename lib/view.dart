import 'package:flutter/material.dart';
import 'package:pokedex_hw/pokemon.dart';

enum PokemonPower {

  grass("Grass", Color(0xFF74CB48)),
  poison("Poison", Color(0xFFA43E9E)),
  fire("Fire", Color(0xFFF57D31)),
  water("Water", Color(0xFF6493EB)),
  bug("Bug", Color(0xFFA7B723)),
  flying("Flying", Color(0xFFA891EC)),
  electric("Electric", Color(0xFFF9CF30)),
  ghost("Ghost", Color(0xFF70559B)),
  type("Type", Color(0xFF666666)),
  normal("Normal", Color(0xFFAAA67F)),
  phychic("Phychic", Color(0xFFFB5584)),
  steel("Steel", Color(0xFFB7B9D0)),
  rock("Rock", Color(0xFFB69E31));

  final String name;
  final Color color;

  const PokemonPower(
      this.name,
      this.color
      );
}
class PokemonMockData {
  static const List<Pokemon> pokemons = [
    Pokemon.bulbasaur,
    Pokemon.charmander,
    Pokemon.squirtle,
    Pokemon.butterfree,
    Pokemon.pikachu,
    Pokemon.gastly,
    Pokemon.ditto,
    Pokemon.mew,
    Pokemon.aron
  ];

}
class BaseStats {
  final int hp, atk, def, satk, sdef, spd;

  const BaseStats({
    required this.hp,
    required this.atk,
    required this.def,
    required this.satk,
    required this.sdef,
    required this.spd
  });
}