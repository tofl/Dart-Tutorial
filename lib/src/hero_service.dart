import 'Hero.dart';
import 'mock_heroes.dart';
import 'dart:async';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;

  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), this.getAll);
  }
}