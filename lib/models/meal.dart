import 'package:flutter/foundation.dart';

enum Complexity {
  Simples,
  Medio,
  Dificil,
}

enum Cost {
  Barato,
  Justo,
  Caro,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simples:
        return "Fácil";
      case Complexity.Medio:
        return "Médio";
      case Complexity.Dificil:
        return "Dificil";
      default:
        return "Desconhecida";
    }
  }

  String get costText {
    switch (cost) {
      case Cost.Barato:
        return "Barato";
      case Cost.Justo:
        return "Justo";
      case Cost.Caro:
        return "Caro";
      default:
        return "Desconhecido";
    }
  }
}