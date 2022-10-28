import 'dart:convert';

class Pokemon {
    Pokemon({
        required this.id,
        required this.name,
        required this.weight,
    });

    int id;
    String name;
    int weight;

    factory Pokemon.fromJson(String str) => Pokemon.fromMap(json.decode(str));

    factory Pokemon.fromMap(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        name: json["name"],
        weight: json["weight"],
    );
}